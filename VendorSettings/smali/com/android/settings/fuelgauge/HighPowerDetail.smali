.class public Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;
.super Landroid/app/DialogFragment;
.source "HighPowerDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GE:Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;

.field private afe:Z

.field private aff:Landroid/widget/Checkable;

.field private afg:Landroid/widget/Checkable;

.field private mIsEnabled:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 43
    invoke-static {}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->rf()Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->GE:Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/b/a/o;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Fragment;Ljava/lang/String;IZ)V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;

    invoke-direct {v0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;-><init>()V

    .line 170
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 171
    const-string v2, "package"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "default_on"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->setArguments(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {v0, p0, p2}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 175
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->rf()Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    .line 162
    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->aY(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0c0b3a

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0b37

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0b39

    goto :goto_0
.end method

.method private qV()Landroid/view/View;
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 98
    const v1, 0x7f040090

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 99
    const v1, 0x7f130114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->b(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->aff:Landroid/widget/Checkable;

    .line 100
    const v1, 0x7f130113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->b(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->afg:Landroid/widget/Checkable;

    .line 101
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->qW()V

    .line 102
    return-object v0
.end method

.method private qW()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->aff:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->afg:Landroid/widget/Checkable;

    iget-boolean v0, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 119
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b(Landroid/view/View;Z)Landroid/widget/Checkable;
    .locals 2

    .prologue
    .line 68
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const v1, 0x7f0c0b64

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const v1, 0x7f0c0b66

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->GE:Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 77
    :cond_0
    check-cast p1, Landroid/widget/Checkable;

    return-object p1

    .line 68
    :cond_1
    const v1, 0x7f0c0b65

    goto :goto_0

    .line 70
    :cond_2
    const v1, 0x7f0c0b67

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 134
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 135
    iget-boolean v0, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 136
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->GE:Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->aZ(Ljava/lang/String;)Z

    move-result v1

    .line 137
    if-eq v0, v1, :cond_0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->GE:Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->ba(Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->GE:Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->bb(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->aff:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 125
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->qW()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->afg:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_0

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 128
    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->qW()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "default_on"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->afe:Z

    .line 64
    iget-boolean v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->afe:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->GE:Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->aZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 65
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->qV()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->GE:Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;

    iget-object v2, p0, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/fuelgauge/PowerWhitelistBackend;->aY(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const v1, 0x7f0c01aa

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/vendorsettings/fuelgauge/HighPowerDetail;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    :cond_0
    return-void
.end method
