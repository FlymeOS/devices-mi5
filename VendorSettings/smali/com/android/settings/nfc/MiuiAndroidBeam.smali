.class public Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;
.super Lcom/android/vendorsettings/BaseFragment;
.source "MiuiAndroidBeam.java"


# instance fields
.field private aif:Lmiui/widget/SlidingButton;

.field private um:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;)Lmiui/widget/SlidingButton;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;->aif:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;)Landroid/nfc/NfcAdapter;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;->um:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;->um:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 59
    :cond_0
    const v0, 0x7f130010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;->aif:Lmiui/widget/SlidingButton;

    .line 60
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;->aif:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;->um:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;->aif:Lmiui/widget/SlidingButton;

    new-instance v1, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam$1;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam$1;-><init>(Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 50
    const v0, 0x7f040008

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;->e(Landroid/view/View;)V

    .line 52
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;->um:Landroid/nfc/NfcAdapter;

    .line 42
    iget-object v0, p0, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;->um:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/vendorsettings/nfc/MiuiAndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 45
    :cond_0
    return-void
.end method
