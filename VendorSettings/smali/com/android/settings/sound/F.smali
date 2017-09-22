.class Lcom/android/settings/sound/F;
.super Landroid/database/ContentObserver;
.source "RingerVolumeFragment.java"


# instance fields
.field final synthetic arf:Lcom/android/settings/sound/E;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/E;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-static {v0}, Lcom/android/settings/sound/E;->b(Lcom/android/settings/sound/E;)Lmiui/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-static {v0}, Lcom/android/settings/sound/E;->c(Lcom/android/settings/sound/E;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-static {v0}, Lcom/android/settings/sound/E;->c(Lcom/android/settings/sound/E;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-static {v1}, Lcom/android/settings/sound/E;->d(Lcom/android/settings/sound/E;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-static {v0}, Lcom/android/settings/sound/E;->c(Lcom/android/settings/sound/E;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-static {v1}, Lcom/android/settings/sound/E;->d(Lcom/android/settings/sound/E;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 383
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    iget-object v2, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-static {v2}, Lcom/android/settings/sound/E;->b(Lcom/android/settings/sound/E;)Lmiui/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/E;->cO(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-static {v1}, Lcom/android/settings/sound/E;->b(Lcom/android/settings/sound/E;)Lmiui/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-virtual {v2, v0}, Lcom/android/settings/sound/E;->cN(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/widget/SeekBar;->setProgress(I)V

    .line 385
    iget-object v1, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-static {v1, v0}, Lcom/android/settings/sound/E;->a(Lcom/android/settings/sound/E;I)I

    .line 388
    :cond_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-static {v0}, Lcom/android/settings/sound/E;->c(Lcom/android/settings/sound/E;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/F;->arf:Lcom/android/settings/sound/E;

    invoke-static {v1}, Lcom/android/settings/sound/E;->d(Lcom/android/settings/sound/E;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method
