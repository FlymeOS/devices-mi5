.class final Lcom/android/vendorsettings/notification/OtherSoundSettings$5;
.super Lcom/android/vendorsettings/notification/SettingPref;
.source "OtherSoundSettings.java"


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0

    .prologue
    .line 116
    invoke-direct/range {p0 .. p5}, Lcom/android/vendorsettings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    packed-switch p2, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    :pswitch_0
    const v0, 0x7f0c0a67

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    :pswitch_1
    const v0, 0x7f0c0a68

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bN(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 119
    invoke-static {p1}, Lcom/android/vendorsettings/notification/OtherSoundSettings;->bM(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
