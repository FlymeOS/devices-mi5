.class public final Lcom/android/server/power/ShutdownThreadInjector;
.super Ljava/lang/Object;
.source "ShutdownThreadInjector.java"


# static fields
.field private static final CUST_ROOT_PATH:Ljava/lang/String;

.field private static final IS_CUSTOMIZATION_TEST:Z

.field private static final OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String;

.field private static final OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String;

.field private static final OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String;

.field private static final OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

.field private static final SHUTDOWN_ACTION_PROPERTY_MIUI:Ljava/lang/String; = "sys.shutdown.miui"

.field private static final SHUTDOWN_ACTION_PROPERTY_MIUI_MUSIC:Ljava/lang/String; = "sys.shutdown.miuimusic"

.field private static final TAG:Ljava/lang/String; = "ShutdownThreadInjector"

.field private static sIsShutdownMusicPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZATION_TEST:Z

    .line 74
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/cust/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUST_ROOT_PATH:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme/operator/boots/shutdownanimation.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme/operator/boots/shutdownaudio.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "disable_operator_animation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "disable_operator_audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String;

    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/miui/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 23
    sput-boolean p0, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    return p0
.end method

.method static checkAnimationFileExist(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    .line 84
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getShutdownMusicFilePath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getShutdownMusicFilePathInner(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    const/4 v0, 0x0

    .line 100
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

    goto :goto_0
.end method

.method private static isSilentMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 168
    .local v0, "audio":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v1

    return v1
.end method

.method static needVibrator()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method static playShutdownMusic(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    .line 110
    const-string v1, "sys.shutdown.miui"

    const-string v2, "shutdown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->getShutdownMusicFilePathInner(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "shutdownMusicPath":Ljava/lang/String;
    const-string v1, "ShutdownThreadInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutdown music: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/power/ShutdownThreadInjector;->isSilentMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {p0}, Lcom/android/server/power/ShutdownThreadInjector;->isSilentMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 116
    const-string v1, "sys.shutdown.miuimusic"

    const-string v2, "shutdown_music"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method private static playShutdownMusicImpl(Ljava/lang/String;)V
    .locals 12
    .param p0, "shutdownMusicPath"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 124
    .local v0, "actionDoneSync":Ljava/lang/Object;
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    .line 127
    :try_start_0
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 128
    .local v6, "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V

    .line 129
    invoke-virtual {v6, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 131
    new-instance v7, Lcom/android/server/power/ShutdownThreadInjector$1;

    invoke-direct {v7, v0}, Lcom/android/server/power/ShutdownThreadInjector$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 141
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v6    # "mediaPlayer":Landroid/media/MediaPlayer;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x1388

    add-long v4, v8, v10

    .line 148
    .local v4, "endTimeForMusic":J
    monitor-enter v0

    .line 149
    :goto_1
    :try_start_1
    sget-boolean v7, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    if-eqz v7, :cond_0

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, v4, v8

    .line 151
    .local v2, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gtz v7, :cond_2

    .line 152
    const-string v7, "ShutdownThreadInjector"

    const-string v8, "play shutdown music timeout"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v2    # "delay":J
    :cond_0
    sget-boolean v7, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    if-nez v7, :cond_1

    .line 161
    const-string v7, "ShutdownThreadInjector"

    const-string v8, "play shutdown music complete"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    return-void

    .line 142
    .end local v4    # "endTimeForMusic":J
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    .line 144
    const-string v7, "ShutdownThreadInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "play shutdown music error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "delay":J
    .restart local v4    # "endTimeForMusic":J
    :cond_2
    :try_start_2
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 157
    :catch_1
    move-exception v7

    goto :goto_1

    .line 163
    .end local v2    # "delay":J
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7
.end method

.method static showShutdownAnimOrDialog(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->checkAnimationFileExist(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->showShutdownAnimation(Landroid/content/Context;Z)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->showShutdownDialog(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method static showShutdownAnimation(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->playShutdownMusic(Landroid/content/Context;Z)V

    .line 92
    return-void
.end method

.method static showShutdownDialog(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    const/4 v9, 0x0

    .line 47
    new-instance v1, Landroid/app/Dialog;

    const v6, 0x103006d

    invoke-direct {v1, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    .local v1, "bootMsgDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x11030003

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 49
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 50
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 51
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 52
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x1

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 53
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7e5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 55
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 56
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const v6, 0x110b0014

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 60
    .local v4, "shutdownImage":Landroid/widget/ImageView;
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 62
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimatedRotateDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11060014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11060015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 64
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 71
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimatedRotateDrawable;
    .end local v4    # "shutdownImage":Landroid/widget/ImageView;
    :goto_0
    const-string v6, "sys.in_shutdown_progress"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 67
    :cond_0
    const-string v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 68
    .local v3, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0
.end method
