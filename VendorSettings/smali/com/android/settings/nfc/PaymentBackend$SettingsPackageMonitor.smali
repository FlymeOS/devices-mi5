.class Lcom/android/vendorsettings/nfc/PaymentBackend$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PaymentBackend.java"


# instance fields
.field final synthetic aiw:Lcom/android/vendorsettings/nfc/PaymentBackend;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/nfc/PaymentBackend;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/vendorsettings/nfc/PaymentBackend$SettingsPackageMonitor;->aiw:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/nfc/PaymentBackend;Lcom/android/vendorsettings/nfc/PaymentBackend$1;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/nfc/PaymentBackend$SettingsPackageMonitor;-><init>(Lcom/android/vendorsettings/nfc/PaymentBackend;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentBackend$SettingsPackageMonitor;->aiw:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-static {v0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->a(Lcom/android/vendorsettings/nfc/PaymentBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 198
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentBackend$SettingsPackageMonitor;->aiw:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-static {v0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->a(Lcom/android/vendorsettings/nfc/PaymentBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 203
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentBackend$SettingsPackageMonitor;->aiw:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-static {v0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->a(Lcom/android/vendorsettings/nfc/PaymentBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 208
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/PaymentBackend$SettingsPackageMonitor;->aiw:Lcom/android/vendorsettings/nfc/PaymentBackend;

    invoke-static {v0}, Lcom/android/vendorsettings/nfc/PaymentBackend;->a(Lcom/android/vendorsettings/nfc/PaymentBackend;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    return-void
.end method
