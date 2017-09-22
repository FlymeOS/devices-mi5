.class public Lcom/android/vendorsettings/fingerprint/G;
.super Landroid/app/DialogFragment;
.source "FingerprintSettings.java"


# instance fields
.field private acs:Landroid/hardware/fingerprint/Fingerprint;

.field private acu:Landroid/widget/EditText;

.field private acv:Ljava/lang/String;

.field private acw:Ljava/lang/Boolean;

.field private mTextSelectionEnd:I

.field private mTextSelectionStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/G;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/G;->acu:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/G;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/vendorsettings/fingerprint/G;->acu:Landroid/widget/EditText;

    return-object p1
.end method

.method private a(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 605
    const-string v0, "FingerprintSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing fpId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/fingerprint/G;->acs:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/G;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/fingerprint/x;

    .line 608
    invoke-static {v0}, Lcom/android/vendorsettings/fingerprint/x;->d(Lcom/android/vendorsettings/fingerprint/x;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 609
    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/G;->acs:Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/fingerprint/x;->a(Lcom/android/vendorsettings/fingerprint/x;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 619
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 620
    return-void

    .line 611
    :cond_0
    new-instance v0, Lcom/android/vendorsettings/fingerprint/D;

    invoke-direct {v0}, Lcom/android/vendorsettings/fingerprint/D;-><init>()V

    .line 612
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 613
    const-string v2, "fingerprint"

    iget-object v3, p0, Lcom/android/vendorsettings/fingerprint/G;->acs:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 614
    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fingerprint/D;->setArguments(Landroid/os/Bundle;)V

    .line 615
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/G;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/fingerprint/D;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 616
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/G;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/vendorsettings/fingerprint/D;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/fingerprint/D;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/fingerprint/G;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/fingerprint/G;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/fingerprint/G;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/G;->acs:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/fingerprint/G;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/G;->acv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/fingerprint/G;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/G;->acw:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/fingerprint/G;)I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/android/vendorsettings/fingerprint/G;->mTextSelectionStart:I

    return v0
.end method

.method static synthetic f(Lcom/android/vendorsettings/fingerprint/G;)I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/android/vendorsettings/fingerprint/G;->mTextSelectionEnd:I

    return v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/G;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/G;->acs:Landroid/hardware/fingerprint/Fingerprint;

    .line 545
    if-eqz p1, :cond_0

    .line 546
    const-string v0, "fingerName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/G;->acv:Ljava/lang/String;

    .line 547
    const-string v0, "textHadFocus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fingerprint/G;->acw:Ljava/lang/Boolean;

    .line 548
    const-string v0, "startSelection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/fingerprint/G;->mTextSelectionStart:I

    .line 549
    const-string v0, "endSelection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vendorsettings/fingerprint/G;->mTextSelectionEnd:I

    .line 551
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fingerprint/G;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040085

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01fe

    new-instance v2, Lcom/android/vendorsettings/fingerprint/I;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/fingerprint/I;-><init>(Lcom/android/vendorsettings/fingerprint/G;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01ff

    new-instance v2, Lcom/android/vendorsettings/fingerprint/H;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/fingerprint/H;-><init>(Lcom/android/vendorsettings/fingerprint/G;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 582
    new-instance v1, Lcom/android/vendorsettings/fingerprint/J;

    invoke-direct {v1, p0, v0}, Lcom/android/vendorsettings/fingerprint/J;-><init>(Lcom/android/vendorsettings/fingerprint/G;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 596
    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/G;->acw:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/G;->acw:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 601
    :cond_2
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 624
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 625
    iget-object v0, p0, Lcom/android/vendorsettings/fingerprint/G;->acu:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 626
    const-string v0, "fingerName"

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/G;->acu:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v0, "textHadFocus"

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/G;->acu:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 628
    const-string v0, "startSelection"

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/G;->acu:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    const-string v0, "endSelection"

    iget-object v1, p0, Lcom/android/vendorsettings/fingerprint/G;->acu:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    :cond_0
    return-void
.end method
