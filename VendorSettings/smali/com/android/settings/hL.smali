.class Lcom/android/vendorsettings/hL;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# instance fields
.field final synthetic AK:Lcom/android/vendorsettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/SoundSettings;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/vendorsettings/hL;->AK:Lcom/android/vendorsettings/SoundSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 144
    iget-object v0, p0, Lcom/android/vendorsettings/hL;->AK:Lcom/android/vendorsettings/SoundSettings;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/SoundSettings;->a(Landroid/os/Message;)V

    .line 147
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/hL;->AK:Lcom/android/vendorsettings/SoundSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/SoundSettings;->a(Lcom/android/vendorsettings/SoundSettings;)Lcom/android/vendorsettings/DefaultRingtonePreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/hL;->AK:Lcom/android/vendorsettings/SoundSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/SoundSettings;->b(Lcom/android/vendorsettings/SoundSettings;)Lcom/android/vendorsettings/DefaultRingtonePreference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/DefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
