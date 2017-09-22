.class Lcom/android/vendorsettings/sound/G;
.super Ljava/lang/Object;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic arf:Lcom/android/vendorsettings/sound/E;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sound/E;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/vendorsettings/sound/G;->arf:Lcom/android/vendorsettings/sound/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 535
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 539
    iget-object v0, p0, Lcom/android/vendorsettings/sound/G;->arf:Lcom/android/vendorsettings/sound/E;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/sound/E;->a(Lcom/android/vendorsettings/sound/E;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 540
    const/4 v0, 0x1

    return v0

    .line 536
    :catch_0
    move-exception v0

    goto :goto_0
.end method
