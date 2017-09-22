.class Lcom/android/vendorsettings/sound/C;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumeFragment.java"


# instance fields
.field final synthetic aqV:Lcom/android/vendorsettings/sound/RingerVolumeFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/sound/RingerVolumeFragment;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/vendorsettings/sound/C;->aqV:Lcom/android/vendorsettings/sound/RingerVolumeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 188
    if-ltz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/vendorsettings/sound/C;->aqV:Lcom/android/vendorsettings/sound/RingerVolumeFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/sound/RingerVolumeFragment;->b(Lcom/android/vendorsettings/sound/RingerVolumeFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/sound/C;->aqV:Lcom/android/vendorsettings/sound/RingerVolumeFragment;

    invoke-static {v2}, Lcom/android/vendorsettings/sound/RingerVolumeFragment;->b(Lcom/android/vendorsettings/sound/RingerVolumeFragment;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    const-string v4, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    :cond_0
    return-void
.end method
