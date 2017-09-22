.class public Lcom/android/vendorsettings/sound/BatchMediaPlayer;
.super Ljava/lang/Object;
.source "BatchMediaPlayer.java"


# instance fields
.field private aqA:Ljava/util/ArrayList;

.field private aqB:I

.field private aqC:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

.field private final aqD:Ljava/lang/Runnable;

.field private aqx:Lcom/android/vendorsettings/sound/a;

.field private aqy:Landroid/media/AudioManager;

.field private aqz:Lcom/android/vendorsettings/sound/v;

.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->mActivity:Landroid/app/Activity;

    .line 29
    iput-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqx:Lcom/android/vendorsettings/sound/a;

    .line 31
    iput-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqy:Landroid/media/AudioManager;

    .line 33
    iput-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqz:Lcom/android/vendorsettings/sound/v;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqA:Ljava/util/ArrayList;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqB:I

    .line 43
    sget-object v0, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;->aqF:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    iput-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqC:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/android/vendorsettings/sound/r;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/sound/r;-><init>(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)V

    iput-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqD:Ljava/lang/Runnable;

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity cann\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->mActivity:Landroid/app/Activity;

    .line 58
    invoke-direct {p0}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->un()V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->uo()V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqD:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->up()V

    return-void
.end method

.method private un()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/android/vendorsettings/sound/a;

    invoke-direct {v0}, Lcom/android/vendorsettings/sound/a;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqx:Lcom/android/vendorsettings/sound/a;

    .line 63
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqx:Lcom/android/vendorsettings/sound/a;

    new-instance v1, Lcom/android/vendorsettings/sound/s;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/sound/s;-><init>(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/sound/a;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqx:Lcom/android/vendorsettings/sound/a;

    new-instance v1, Lcom/android/vendorsettings/sound/t;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/sound/t;-><init>(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/sound/a;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqx:Lcom/android/vendorsettings/sound/a;

    new-instance v1, Lcom/android/vendorsettings/sound/u;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/sound/u;-><init>(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/sound/a;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 95
    return-void
.end method

.method private uo()V
    .locals 4

    .prologue
    .line 145
    :try_start_0
    iget v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqB:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqB:I

    iget-object v1, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqA:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqB:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/p;->bG(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    .line 148
    iget-object v2, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqx:Lcom/android/vendorsettings/sound/a;

    iget-object v3, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/vendorsettings/sound/a;->a(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->stop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private up()V
    .locals 4

    .prologue
    .line 157
    iget v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqB:I

    if-gez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqy:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->mActivity:Landroid/app/Activity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqy:Landroid/media/AudioManager;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqy:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 166
    sget-object v0, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;->aqG:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    iput-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqC:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    .line 167
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqz:Lcom/android/vendorsettings/sound/v;

    if-eqz v0, :cond_2

    .line 168
    iget-object v1, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqz:Lcom/android/vendorsettings/sound/v;

    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqA:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqB:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqB:I

    invoke-virtual {p0}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->size()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/android/vendorsettings/sound/v;->d(Ljava/lang/String;II)V

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqx:Lcom/android/vendorsettings/sound/a;

    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/a;->play()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/sound/v;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqz:Lcom/android/vendorsettings/sound/v;

    .line 99
    return-void
.end method

.method public bI(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqA:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->uo()V

    .line 118
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->stop(I)V

    .line 122
    return-void
.end method

.method public stop(I)V
    .locals 2

    .prologue
    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqB:I

    .line 126
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqD:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    sget-object v0, Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;->aqF:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    iput-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqC:Lcom/android/vendorsettings/sound/BatchMediaPlayer$PlayState;

    .line 130
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqy:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqy:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqx:Lcom/android/vendorsettings/sound/a;

    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/a;->stop()V

    .line 134
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqz:Lcom/android/vendorsettings/sound/v;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->aqz:Lcom/android/vendorsettings/sound/v;

    invoke-interface {v0, p1}, Lcom/android/vendorsettings/sound/v;->cf(I)V

    .line 137
    :cond_1
    return-void
.end method
