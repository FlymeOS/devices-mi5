.class Lcom/android/vendorsettings/sound/u;
.super Ljava/lang/Object;
.source "BatchMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/vendorsettings/sound/u;->aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vendorsettings/sound/u;->aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->d(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/vendorsettings/sound/u;->aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    invoke-static {v0}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->e(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/sound/u;->aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->stop(I)V

    goto :goto_0
.end method
