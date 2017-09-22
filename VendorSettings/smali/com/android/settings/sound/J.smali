.class final Lcom/android/vendorsettings/sound/J;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# instance fields
.field private akk:Z

.field final synthetic arj:Lcom/android/vendorsettings/sound/H;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/sound/H;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/sound/H;Lcom/android/vendorsettings/sound/I;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/sound/J;-><init>(Lcom/android/vendorsettings/sound/H;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 138
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 139
    iget-object v2, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v2}, Lcom/android/vendorsettings/sound/H;->b(Lcom/android/vendorsettings/sound/H;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/H;->c(Lcom/android/vendorsettings/sound/H;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    iget-object v2, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v2}, Lcom/android/vendorsettings/sound/H;->c(Lcom/android/vendorsettings/sound/H;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/vendorsettings/sound/H;->cQ(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/H;->c(Lcom/android/vendorsettings/sound/H;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v2, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-virtual {v2, v1}, Lcom/android/vendorsettings/sound/H;->cR(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/H;->e(Lcom/android/vendorsettings/sound/H;)Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/sound/VolumeSeekBarPreference;->uD()V

    .line 156
    return-void

    .line 142
    :cond_1
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/H;->b(Lcom/android/vendorsettings/sound/H;)I

    move-result v0

    iget-object v1, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v1}, Lcom/android/vendorsettings/sound/H;->d(Lcom/android/vendorsettings/sound/H;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/H;->a(Lcom/android/vendorsettings/sound/H;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/sound/H;->a(Lcom/android/vendorsettings/sound/H;Z)V

    goto :goto_0

    .line 147
    :cond_2
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/H;->b(Lcom/android/vendorsettings/sound/H;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/H;->d(Lcom/android/vendorsettings/sound/H;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v1}, Lcom/android/vendorsettings/sound/H;->b(Lcom/android/vendorsettings/sound/H;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v1}, Lcom/android/vendorsettings/sound/H;->c(Lcom/android/vendorsettings/sound/H;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    iget-object v2, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v2}, Lcom/android/vendorsettings/sound/H;->c(Lcom/android/vendorsettings/sound/H;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/sound/H;->cQ(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v1}, Lcom/android/vendorsettings/sound/H;->c(Lcom/android/vendorsettings/sound/H;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-virtual {v2, v0}, Lcom/android/vendorsettings/sound/H;->cR(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0
.end method

.method public setListening(Z)V
    .locals 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/vendorsettings/sound/J;->akk:Z

    if-ne v0, p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 122
    :cond_0
    iput-boolean p1, p0, Lcom/android/vendorsettings/sound/J;->akk:Z

    .line 123
    if-eqz p1, :cond_1

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v1}, Lcom/android/vendorsettings/sound/H;->a(Lcom/android/vendorsettings/sound/H;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/sound/J;->arj:Lcom/android/vendorsettings/sound/H;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/H;->a(Lcom/android/vendorsettings/sound/H;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
