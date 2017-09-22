.class Lcom/android/settings/DeviceAdminAdd$4$1;
.super Landroid/os/RemoteCallback;
.source "DeviceAdminAdd.java"


# instance fields
.field final synthetic lc:Lcom/android/settings/cg;


# direct methods
.method constructor <init>(Lcom/android/settings/cg;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$4$1;->lc:Lcom/android/settings/cg;

    invoke-direct {p0, p2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onResult(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 308
    if-eqz p1, :cond_0

    const-string v0, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$4$1;->lc:Lcom/android/settings/cg;

    iget-object v1, v1, Lcom/android/settings/cg;->lb:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v1, v0}, Lcom/android/settings/DeviceAdminAdd;->a(Ljava/lang/CharSequence;)V

    .line 313
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
