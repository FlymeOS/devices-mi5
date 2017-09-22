.class Lcom/android/vendorsettings/applications/AppStorageSettings$3;
.super Landroid/os/Handler;
.source "AppStorageSettings.java"


# instance fields
.field final synthetic Hh:Lcom/android/vendorsettings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/AppStorageSettings;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/vendorsettings/applications/AppStorageSettings$3;->Hh:Lcom/android/vendorsettings/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStorageSettings$3;->Hh:Lcom/android/vendorsettings/applications/AppStorageSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/AppStorageSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 462
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 464
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStorageSettings$3;->Hh:Lcom/android/vendorsettings/applications/AppStorageSettings;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/applications/AppStorageSettings;->a(Lcom/android/vendorsettings/applications/AppStorageSettings;Landroid/os/Message;)V

    goto :goto_0

    .line 468
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppStorageSettings$3;->Hh:Lcom/android/vendorsettings/applications/AppStorageSettings;

    iget-object v0, v0, Lcom/android/vendorsettings/applications/AppStorageSettings;->Fh:Lcom/android/b/a/a;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppStorageSettings$3;->Hh:Lcom/android/vendorsettings/applications/AppStorageSettings;

    iget-object v1, v1, Lcom/android/vendorsettings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppStorageSettings$3;->Hh:Lcom/android/vendorsettings/applications/AppStorageSettings;

    iget v2, v2, Lcom/android/vendorsettings/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->w(Ljava/lang/String;I)V

    goto :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
