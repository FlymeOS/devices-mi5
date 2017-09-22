.class final Lcom/android/vendorsettings/notification/NotificationSettings$H;
.super Landroid/os/Handler;
.source "NotificationSettings.java"


# instance fields
.field final synthetic ajD:Lcom/android/vendorsettings/notification/NotificationSettings;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/notification/NotificationSettings;)V
    .locals 1

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/vendorsettings/notification/NotificationSettings$H;->ajD:Lcom/android/vendorsettings/notification/NotificationSettings;

    .line 607
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 608
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/notification/NotificationSettings;Lcom/android/vendorsettings/notification/NotificationSettings$1;)V
    .locals 0

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/notification/NotificationSettings$H;-><init>(Lcom/android/vendorsettings/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 612
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 629
    :goto_0
    return-void

    .line 614
    :pswitch_0
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings$H;->ajD:Lcom/android/vendorsettings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->b(Lcom/android/vendorsettings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 617
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings$H;->ajD:Lcom/android/vendorsettings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->d(Lcom/android/vendorsettings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 620
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings$H;->ajD:Lcom/android/vendorsettings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->n(Lcom/android/vendorsettings/notification/NotificationSettings;)Lcom/android/vendorsettings/notification/NotificationSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 623
    :pswitch_3
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings$H;->ajD:Lcom/android/vendorsettings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->o(Lcom/android/vendorsettings/notification/NotificationSettings;)V

    goto :goto_0

    .line 626
    :pswitch_4
    iget-object v0, p0, Lcom/android/vendorsettings/notification/NotificationSettings$H;->ajD:Lcom/android/vendorsettings/notification/NotificationSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/notification/NotificationSettings;->p(Lcom/android/vendorsettings/notification/NotificationSettings;)V

    goto :goto_0

    .line 612
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
