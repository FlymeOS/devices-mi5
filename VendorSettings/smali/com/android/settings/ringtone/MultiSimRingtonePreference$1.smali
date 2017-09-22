.class Lcom/android/settings/ringtone/MultiSimRingtonePreference$1;
.super Landroid/os/Handler;
.source "MultiSimRingtonePreference.java"


# instance fields
.field final synthetic aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/ringtone/MultiSimRingtonePreference;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$1;->aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 39
    iget-object v2, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$1;->aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$1;->aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$1;->aoB:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
