.class Lcom/android/settings/z;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# instance fields
.field final synthetic aT:Lcom/android/settings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/settings/z;->aT:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/w;)V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/android/settings/z;-><init>(Lcom/android/settings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 585
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 603
    :goto_0
    return-void

    .line 587
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/z;->aT:Lcom/android/settings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 588
    if-nez v0, :cond_0

    .line 589
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->d(Z)Z

    goto :goto_0

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/android/settings/z;->aT:Lcom/android/settings/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->a(Lcom/android/settings/ApnSettings;)V

    .line 593
    iget-object v1, p0, Lcom/android/settings/z;->aT:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 594
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->d(Z)Z

    .line 595
    iget-object v1, p0, Lcom/android/settings/z;->aT:Lcom/android/settings/ApnSettings;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/android/settings/ApnSettings;->removeDialog(I)V

    .line 596
    iget-object v1, p0, Lcom/android/settings/z;->aT:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
