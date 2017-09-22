.class public Lcom/android/settings/sound/AudioSettingsFragment;
.super Lcom/android/settings/BaseListFragment;
.source "AudioSettingsFragment.java"


# static fields
.field private static final aqe:Ljava/lang/String;


# instance fields
.field private aqf:Lcom/android/settings/sound/x;

.field private aqg:Z

.field private aqh:Z

.field private aqi:Lcom/android/settings/sound/k;

.field private aqj:Lcom/android/settings/sound/BatchMediaPlayer;

.field private aqk:Landroid/os/AsyncTask;

.field private aql:Ljava/util/Comparator;

.field private aqm:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mRingtoneType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/app/constants/ResourceBrowserConstants;->MIUI_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sound/AudioSettingsFragment;->aqe:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/BaseListFragment;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqg:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqh:Z

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->mRingtoneType:I

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/android/settings/sound/AudioSettingsFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqk:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/sound/AudioSettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/sound/AudioSettingsFragment;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/sound/AudioSettingsFragment;->ui()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/settings/sound/AudioSettingsFragment;->aqe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/sound/AudioSettingsFragment;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->mRingtoneType:I

    return v0
.end method

.method static synthetic b(Lcom/android/settings/sound/AudioSettingsFragment;Ljava/lang/String;)Lcom/android/settings/sound/n;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/sound/AudioSettingsFragment;->bE(Ljava/lang/String;)Lcom/android/settings/sound/n;

    move-result-object v0

    return-object v0
.end method

.method private bE(Ljava/lang/String;)Lcom/android/settings/sound/n;
    .locals 12

    .prologue
    const-wide/16 v10, 0x3c

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 359
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 381
    :goto_0
    return-object v0

    .line 363
    :cond_0
    new-instance v2, Lcom/android/settings/sound/n;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/sound/n;-><init>(Lcom/android/settings/sound/AudioSettingsFragment;Lcom/android/settings/sound/e;)V

    .line 364
    iput-object p1, v2, Lcom/android/settings/sound/n;->path:Ljava/lang/String;

    .line 365
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/settings/sound/n;->aqv:J

    .line 366
    invoke-static {p1}, Lcom/android/settings/sound/p;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 368
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 369
    :goto_1
    const-string v3, "_&_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 370
    if-lez v3, :cond_2

    .line 371
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/sound/n;->name:Ljava/lang/String;

    .line 375
    :goto_2
    invoke-static {p1}, Lcom/android/settings/sound/p;->bH(Ljava/lang/String;)J

    move-result-wide v4

    .line 376
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move-object v0, v1

    .line 377
    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 373
    :cond_2
    iput-object v0, v2, Lcom/android/settings/sound/n;->name:Ljava/lang/String;

    goto :goto_2

    .line 379
    :cond_3
    const-wide/16 v0, 0x3e8

    div-long v0, v4, v0

    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 380
    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    rem-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/sound/n;->aqu:Ljava/lang/String;

    move-object v0, v2

    .line 381
    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/sound/AudioSettingsFragment;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqg:Z

    return v0
.end method

.method static synthetic d(Lcom/android/settings/sound/AudioSettingsFragment;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqh:Z

    return v0
.end method

.method static synthetic e(Lcom/android/settings/sound/AudioSettingsFragment;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/sound/AudioSettingsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/sound/AudioSettingsFragment;)Lcom/android/settings/sound/BatchMediaPlayer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqj:Lcom/android/settings/sound/BatchMediaPlayer;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/sound/AudioSettingsFragment;)Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aql:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/sound/AudioSettingsFragment;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/sound/AudioSettingsFragment;->uj()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/android/settings/sound/AudioSettingsFragment;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqk:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings/sound/AudioSettingsFragment;)Lcom/android/settings/sound/k;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqi:Lcom/android/settings/sound/k;

    return-object v0
.end method

.method static synthetic l(Lcom/android/settings/sound/AudioSettingsFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private ui()V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Lcom/android/settings/sound/h;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/h;-><init>(Lcom/android/settings/sound/AudioSettingsFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 420
    return-void
.end method

.method private uj()Z
    .locals 3

    .prologue
    .line 423
    iget-object v1, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqf:Lcom/android/settings/sound/x;

    monitor-enter v1

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqf:Lcom/android/settings/sound/x;

    sget-object v2, Lcom/android/settings/sound/AudioSettingsFragment;->aqe:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/sound/x;->bL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqf:Lcom/android/settings/sound/x;

    sget-object v2, Lcom/android/settings/sound/AudioSettingsFragment;->aqe:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/sound/x;->bK(Ljava/lang/String;)Lcom/android/settings/sound/z;

    .line 426
    const/4 v0, 0x1

    monitor-exit v1

    .line 429
    :goto_0
    return v0

    .line 428
    :cond_0
    monitor-exit v1

    .line 429
    const/4 v0, 0x0

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/android/settings/sound/x;

    invoke-direct {v0}, Lcom/android/settings/sound/x;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqf:Lcom/android/settings/sound/x;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v2, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqg:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqg:Z

    .line 80
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v2, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqh:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqh:Z

    .line 81
    const-string v1, "android.intent.extra.ringtone.TYPE"

    iget v2, p0, Lcom/android/settings/sound/AudioSettingsFragment;->mRingtoneType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->mRingtoneType:I

    .line 84
    :cond_0
    new-instance v0, Lcom/android/settings/sound/e;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/e;-><init>(Lcom/android/settings/sound/AudioSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aql:Ljava/util/Comparator;

    .line 96
    new-instance v0, Lcom/android/settings/sound/k;

    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sound/k;-><init>(Lcom/android/settings/sound/AudioSettingsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqi:Lcom/android/settings/sound/k;

    .line 97
    iget-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqi:Lcom/android/settings/sound/k;

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/AudioSettingsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    new-instance v0, Lcom/android/settings/sound/BatchMediaPlayer;

    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/sound/BatchMediaPlayer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqj:Lcom/android/settings/sound/BatchMediaPlayer;

    .line 100
    iget-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqj:Lcom/android/settings/sound/BatchMediaPlayer;

    new-instance v1, Lcom/android/settings/sound/f;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/f;-><init>(Lcom/android/settings/sound/AudioSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/BatchMediaPlayer;->a(Lcom/android/settings/sound/v;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sound/AudioSettingsFragment;->mRingtoneType:I

    invoke-static {v0, v1}, Lcom/android/settings/sound/p;->c(Landroid/app/Activity;I)V

    .line 115
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/settings/BaseListFragment;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/sound/AudioSettingsFragment;->aqj:Lcom/android/settings/sound/BatchMediaPlayer;

    invoke-virtual {v0}, Lcom/android/settings/sound/BatchMediaPlayer;->stop()V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/settings/BaseListFragment;->onResume()V

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/sound/g;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/g;-><init>(Lcom/android/settings/sound/AudioSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method
