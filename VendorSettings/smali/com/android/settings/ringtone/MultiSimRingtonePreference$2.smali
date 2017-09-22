.class Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;
.super Ljava/lang/Object;
.source "MultiSimRingtonePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-static {v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->b(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-static {v1}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->b(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-static {v3}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->a(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 51
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-static {v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->b(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-static {v1}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->b(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-static {v3}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->c(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    return-void
.end method
