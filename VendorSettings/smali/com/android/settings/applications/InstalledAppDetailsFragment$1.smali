.class Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;
.super Landroid/os/Handler;
.source "InstalledAppDetailsFragment.java"


# instance fields
.field final synthetic Jt:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;->Jt:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;->Jt:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 199
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;->Jt:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;->Jt:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->b(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;->Jt:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->a(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;)Lcom/android/b/a/o;

    move-result-object v1

    iget-object v1, v1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;->Jt:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    iget v2, v2, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/b/a/a;->w(Ljava/lang/String;I)V

    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v0, p0, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment$1;->Jt:Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;

    invoke-static {v0, p1}, Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;->b(Lcom/android/vendorsettings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
