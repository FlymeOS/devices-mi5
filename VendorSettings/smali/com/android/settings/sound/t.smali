.class Lcom/android/vendorsettings/sound/t;
.super Ljava/lang/Object;
.source "BatchMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/vendorsettings/sound/t;->aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 79
    const/16 v0, 0x3e8

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    rsub-int v1, v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    .line 80
    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 81
    iget-object v2, p0, Lcom/android/vendorsettings/sound/t;->aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    invoke-static {v2}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->c(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/sound/t;->aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    invoke-static {v3}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->b(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object v2, p0, Lcom/android/vendorsettings/sound/t;->aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    invoke-static {v2}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->c(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/sound/t;->aqE:Lcom/android/vendorsettings/sound/BatchMediaPlayer;

    invoke-static {v3}, Lcom/android/vendorsettings/sound/BatchMediaPlayer;->b(Lcom/android/vendorsettings/sound/BatchMediaPlayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    return-void
.end method
