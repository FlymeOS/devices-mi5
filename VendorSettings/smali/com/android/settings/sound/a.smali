.class public Lcom/android/vendorsettings/sound/a;
.super Ljava/lang/Object;
.source "AsyncMediaPlayer.java"


# instance fields
.field private final apX:Ljava/util/LinkedList;

.field private apY:Lcom/android/vendorsettings/sound/d;

.field private apZ:Landroid/media/MediaPlayer;

.field private aqa:Landroid/media/MediaPlayer$OnErrorListener;

.field private aqb:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/sound/a;->apX:Ljava/util/LinkedList;

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/vendorsettings/sound/a;->mState:I

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/sound/a;Lcom/android/vendorsettings/sound/d;)Lcom/android/vendorsettings/sound/d;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/android/vendorsettings/sound/a;->apY:Lcom/android/vendorsettings/sound/d;

    return-object p1
.end method

.method static synthetic a(Lcom/android/vendorsettings/sound/a;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/vendorsettings/sound/a;->apX:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/sound/a;Lcom/android/vendorsettings/sound/c;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/sound/a;->b(Lcom/android/vendorsettings/sound/c;)V

    return-void
.end method

.method private a(Lcom/android/vendorsettings/sound/c;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/vendorsettings/sound/a;->apX:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/android/vendorsettings/sound/a;->apY:Lcom/android/vendorsettings/sound/d;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/vendorsettings/sound/d;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/sound/d;-><init>(Lcom/android/vendorsettings/sound/a;)V

    iput-object v0, p0, Lcom/android/vendorsettings/sound/a;->apY:Lcom/android/vendorsettings/sound/d;

    .line 94
    iget-object v0, p0, Lcom/android/vendorsettings/sound/a;->apY:Lcom/android/vendorsettings/sound/d;

    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/d;->start()V

    .line 96
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/sound/a;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/vendorsettings/sound/a;->ug()V

    return-void
.end method

.method private b(Lcom/android/vendorsettings/sound/c;)V
    .locals 4

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/a;->apZ:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/vendorsettings/sound/a;->uh()V

    .line 105
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/android/vendorsettings/sound/a;->aqa:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 107
    iget-object v1, p0, Lcom/android/vendorsettings/sound/a;->aqb:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 108
    iget-object v1, p0, Lcom/android/vendorsettings/sound/a;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 110
    iget v1, p1, Lcom/android/vendorsettings/sound/c;->aqc:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 111
    iget-object v1, p1, Lcom/android/vendorsettings/sound/c;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/vendorsettings/sound/c;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 112
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 114
    iput-object v0, p0, Lcom/android/vendorsettings/sound/a;->apZ:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "AsyncMediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START error loading sound for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/vendorsettings/sound/c;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/vendorsettings/sound/a;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/vendorsettings/sound/a;->uh()V

    return-void
.end method

.method private ug()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/vendorsettings/sound/a;->apZ:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/vendorsettings/sound/a;->apZ:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 125
    :cond_0
    return-void
.end method

.method private uh()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/vendorsettings/sound/a;->apZ:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/vendorsettings/sound/a;->apZ:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 130
    iget-object v0, p0, Lcom/android/vendorsettings/sound/a;->apZ:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/sound/a;->apZ:Landroid/media/MediaPlayer;

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "AsyncMediaPlayer"

    const-string v1, "STOP command without a player"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/vendorsettings/sound/a;->apX:Ljava/util/LinkedList;

    monitor-enter v1

    .line 45
    :try_start_0
    new-instance v0, Lcom/android/vendorsettings/sound/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/vendorsettings/sound/c;-><init>(Lcom/android/vendorsettings/sound/b;)V

    .line 46
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/vendorsettings/sound/c;->code:I

    .line 47
    iput-object p1, v0, Lcom/android/vendorsettings/sound/c;->context:Landroid/content/Context;

    .line 48
    iput-object p2, v0, Lcom/android/vendorsettings/sound/c;->uri:Landroid/net/Uri;

    .line 49
    iput p3, v0, Lcom/android/vendorsettings/sound/c;->aqc:I

    .line 50
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/sound/a;->a(Lcom/android/vendorsettings/sound/c;)V

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/sound/a;->mState:I

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/vendorsettings/sound/a;->apX:Ljava/util/LinkedList;

    monitor-enter v1

    .line 57
    :try_start_0
    iget v0, p0, Lcom/android/vendorsettings/sound/a;->mState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 58
    new-instance v0, Lcom/android/vendorsettings/sound/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/vendorsettings/sound/c;-><init>(Lcom/android/vendorsettings/sound/b;)V

    .line 59
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/vendorsettings/sound/c;->code:I

    .line 60
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/sound/a;->a(Lcom/android/vendorsettings/sound/c;)V

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/vendorsettings/sound/a;->mState:I

    .line 63
    :cond_0
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/vendorsettings/sound/a;->aqb:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 83
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/vendorsettings/sound/a;->aqa:Landroid/media/MediaPlayer$OnErrorListener;

    .line 79
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/vendorsettings/sound/a;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 87
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 67
    iget-object v1, p0, Lcom/android/vendorsettings/sound/a;->apX:Ljava/util/LinkedList;

    monitor-enter v1

    .line 68
    :try_start_0
    iget v0, p0, Lcom/android/vendorsettings/sound/a;->mState:I

    if-eq v0, v2, :cond_0

    .line 69
    new-instance v0, Lcom/android/vendorsettings/sound/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/vendorsettings/sound/c;-><init>(Lcom/android/vendorsettings/sound/b;)V

    .line 70
    const/4 v2, 0x3

    iput v2, v0, Lcom/android/vendorsettings/sound/c;->code:I

    .line 71
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/sound/a;->a(Lcom/android/vendorsettings/sound/c;)V

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/vendorsettings/sound/a;->mState:I

    .line 74
    :cond_0
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
