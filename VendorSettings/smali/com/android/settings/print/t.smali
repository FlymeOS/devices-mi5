.class Lcom/android/vendorsettings/print/t;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintSettingsFragment.java"


# instance fields
.field final synthetic amF:Lcom/android/vendorsettings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/print/PrintSettingsFragment;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/vendorsettings/print/t;->amF:Lcom/android/vendorsettings/print/PrintSettingsFragment;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/print/PrintSettingsFragment;Lcom/android/vendorsettings/print/m;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/print/t;-><init>(Lcom/android/vendorsettings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/vendorsettings/print/t;->amF:Lcom/android/vendorsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/print/PrintSettingsFragment;->b(Lcom/android/vendorsettings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 390
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/vendorsettings/print/t;->amF:Lcom/android/vendorsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/print/PrintSettingsFragment;->b(Lcom/android/vendorsettings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 395
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/vendorsettings/print/t;->amF:Lcom/android/vendorsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/print/PrintSettingsFragment;->b(Lcom/android/vendorsettings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 400
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/vendorsettings/print/t;->amF:Lcom/android/vendorsettings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/print/PrintSettingsFragment;->b(Lcom/android/vendorsettings/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 405
    return-void
.end method
