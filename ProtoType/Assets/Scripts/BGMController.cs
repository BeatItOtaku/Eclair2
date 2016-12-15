using UnityEngine;
using System.Collections;

public class BGMController : MonoBehaviour
{
	public enum TransitionKind { In, Out};

    public AudioClip intro;
    public AudioClip loop;

    public bool PlayOnAwake = true;

    public float defaultVolume = 1;
    public float volumeSmoothFactor = 0.5f;

    private float volume = 1;
    public float Volume
    {
        get
        {
            return targetVolume;
        }
        set
        {
            targetVolume = value;
            /*foreach (AudioSource source in audioSource)
            {
                source.volume = volume;
            }*/
        }
    }

    private float targetVolume = 1;

    AudioSource[] audioSource = new AudioSource[2];

    // Use this for initialization
    void Start()
    {
        audioSource[0] = this.gameObject.AddComponent<AudioSource>();
        audioSource[1] = this.gameObject.AddComponent<AudioSource>();

        foreach (AudioSource source in audioSource)
        {
            source.bypassEffects = true;
            source.bypassListenerEffects = true;
            source.bypassReverbZones = true;
            source.volume = volume;
        }

        if (intro != null)
        {
            audioSource[0].playOnAwake = false;
            if (loop != null)
            {
                audioSource[1].playOnAwake = false;
            }
        }

        Volume = defaultVolume;
        volume = defaultVolume;
        setVolume_raw(volume);

        if (PlayOnAwake) Play();
    }

    // Update is called once per frame
    void Update()
    {
        if(targetVolume != volume)
        {
            volume = Mathf.Lerp(volume, targetVolume, volumeSmoothFactor);
            setVolume_raw(volume);
        }
    }

    private void setVolume_raw(float volume)
    {
        foreach (AudioSource source in audioSource)
        {
            source.volume = volume;
        }
    }

    public void Play(AudioClip intro, AudioClip loop, float volume)
    {
        Volume = volume;
        Play(intro, loop);
    }

    public void Play(AudioClip intro,AudioClip loop)
    {
        this.intro = intro;
        this.loop = loop;
        Play();
    }

    public void Play()
    {
		if (intro != null) {
			audioSource [0].clip = intro;
			audioSource [0].Play ();
			if (loop != null) {
				audioSource [1].clip = loop;
				audioSource [1].loop = true;
				audioSource [1].PlayScheduled (AudioSettings.dspTime + intro.length);
			}
		} else {
			audioSource [1].clip = loop;
			audioSource [1].loop = true;
			audioSource [1].Play ();
		}
    }

	public void Change(AudioClip intro, AudioClip loop){
		StartCoroutine(Change_raw (intro, loop, Volume));
	}

	public void Change(AudioClip intro, AudioClip loop,float volume){
		StartCoroutine(Change_raw (intro, loop, volume));
	}

	public IEnumerator Change_raw(AudioClip intro, AudioClip loop,float volume){
		Fade_raw (0.5f,TransitionKind.Out);
		Play (intro, loop, volume);
		return null;
	}

    public void Fade(float duration,TransitionKind transitionKind)
    {
        StartCoroutine(Fade_raw(duration, transitionKind));
    }

	private IEnumerator Fade_raw(float duration,TransitionKind transitionKind){
		float timeCursor = 0;
		float startVolume = this.Volume;
		while (timeCursor < duration) {
			timeCursor += Time.deltaTime;
			float a = transitionKind == TransitionKind.In ? (timeCursor / duration) : (1 - (timeCursor / duration));
			Volume = startVolume * a;
			yield return null;
		}
		Volume = startVolume * (transitionKind == TransitionKind.In ? 1 : 0);
	}

	public void Stop(){
			audioSource [0].Stop ();
			audioSource [1].Stop ();
	}
}