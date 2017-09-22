.class Lcom/android/settings/sound/s;
.super Ljava/lang/Object;
.source "BatchMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic aqE:Lcom/android/settings/sound/BatchMediaPlayer;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/BatchMediaPlayer;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/sound/s;->aqE:Lcom/android/settings/sound/BatchMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 66
    if-ne p2, v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/sound/s;->aqE:Lcom/android/settings/sound/BatchMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/android/settings/sound/BatchMediaPlayer;->stop(I)V

    .line 73
    :goto_0
    return v2

    .line 68
    :cond_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/settings/sound/s;->aqE:Lcom/android/settings/sound/BatchMediaPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/BatchMediaPlayer;->stop(I)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/s;->aqE:Lcom/android/settings/sound/BatchMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/BatchMediaPlayer;->stop(I)V

    goto :goto_0
.end method
