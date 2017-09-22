.class public Lcom/android/vendorsettings/fingerprint/D;
.super Landroid/app/DialogFragment;
.source "FingerprintSettings.java"


# instance fields
.field private acs:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/D;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/D;->acs:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/D;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/D;->acs:Landroid/hardware/fingerprint/Fingerprint;

    .line 641
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/D;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0212

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0213

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0214

    new-instance v2, Lcom/android/vendorsettings/fingerprint/F;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/fingerprint/F;-><init>(Lcom/android/vendorsettings/fingerprint/D;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01a6

    new-instance v2, Lcom/android/vendorsettings/fingerprint/E;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/fingerprint/E;-><init>(Lcom/android/vendorsettings/fingerprint/D;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 663
    return-object v0
.end method
