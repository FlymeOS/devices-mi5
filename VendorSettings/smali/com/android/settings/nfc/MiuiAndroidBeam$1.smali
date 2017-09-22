.class Lcom/android/settings/nfc/MiuiAndroidBeam$1;
.super Ljava/lang/Object;
.source "MiuiAndroidBeam.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic aig:Lcom/android/settings/nfc/MiuiAndroidBeam;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/MiuiAndroidBeam;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/nfc/MiuiAndroidBeam$1;->aig:Lcom/android/settings/nfc/MiuiAndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam$1;->aig:Lcom/android/settings/nfc/MiuiAndroidBeam;

    invoke-static {v0}, Lcom/android/settings/nfc/MiuiAndroidBeam;->a(Lcom/android/settings/nfc/MiuiAndroidBeam;)Lmiui/widget/SlidingButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 65
    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam$1;->aig:Lcom/android/settings/nfc/MiuiAndroidBeam;

    invoke-static {v0}, Lcom/android/settings/nfc/MiuiAndroidBeam;->b(Lcom/android/settings/nfc/MiuiAndroidBeam;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam$1;->aig:Lcom/android/settings/nfc/MiuiAndroidBeam;

    invoke-static {v0}, Lcom/android/settings/nfc/MiuiAndroidBeam;->a(Lcom/android/settings/nfc/MiuiAndroidBeam;)Lmiui/widget/SlidingButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 71
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/MiuiAndroidBeam$1;->aig:Lcom/android/settings/nfc/MiuiAndroidBeam;

    invoke-static {v0}, Lcom/android/settings/nfc/MiuiAndroidBeam;->b(Lcom/android/settings/nfc/MiuiAndroidBeam;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    goto :goto_0
.end method
