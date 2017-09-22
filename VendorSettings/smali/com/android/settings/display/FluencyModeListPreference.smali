.class public Lcom/android/settings/display/FluencyModeListPreference;
.super Landroid/preference/ListPreference;
.source "FluencyModeListPreference.java"


# instance fields
.field private Yd:[Ljava/lang/String;

.field private Ye:[Ljava/lang/String;

.field private Yf:[Ljava/lang/String;

.field private Yg:Lcom/android/settings/display/i;

.field private Yh:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/FluencyModeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/android/settings/display/i;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/display/i;-><init>(Lcom/android/settings/display/FluencyModeListPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yg:Lcom/android/settings/display/i;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yd:[Ljava/lang/String;

    .line 47
    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/FluencyModeListPreference;->Ye:[Ljava/lang/String;

    .line 48
    const v1, 0x7f0a00cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yf:[Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yd:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/FluencyModeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 50
    invoke-direct {p0}, Lcom/android/settings/display/FluencyModeListPreference;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStatus:I

    .line 51
    iget v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStatus:I

    iput v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yh:I

    .line 52
    iget-object v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yd:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStatus:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/display/FluencyModeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/FluencyModeListPreference;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yh:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/display/FluencyModeListPreference;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yd:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/display/FluencyModeListPreference;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStatus:I

    return v0
.end method

.method static synthetic b(Lcom/android/settings/display/FluencyModeListPreference;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/display/FluencyModeListPreference;->showDialog(I)V

    return-void
.end method

.method private bE(I)V
    .locals 2

    .prologue
    .line 208
    if-nez p1, :cond_1

    .line 209
    const-string v0, "persist.sys.miui_feature_config"

    const-string v1, "/system/etc/miui_feature/lite.conf"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/FluencyModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 214
    return-void

    .line 210
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 211
    const-string v0, "persist.sys.miui_feature_config"

    const-string v1, "/system/etc/miui_feature/default.conf"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/display/FluencyModeListPreference;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/display/FluencyModeListPreference;->bE(I)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/display/FluencyModeListPreference;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->Ye:[Ljava/lang/String;

    return-object v0
.end method

.method private getStatus()I
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->isLiteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/display/FluencyModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yd:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yf:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c10d3

    new-instance v2, Lcom/android/settings/display/h;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/display/h;-><init>(Lcom/android/settings/display/FluencyModeListPreference;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/display/g;

    invoke-direct {v2, p0}, Lcom/android/settings/display/g;-><init>(Lcom/android/settings/display/FluencyModeListPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/display/f;

    invoke-direct {v1, p0}, Lcom/android/settings/display/f;-><init>(Lcom/android/settings/display/FluencyModeListPreference;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 156
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yg:Lcom/android/settings/display/i;

    iget v1, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStatus:I

    new-instance v2, Lcom/android/settings/display/e;

    invoke-direct {v2, p0}, Lcom/android/settings/display/e;-><init>(Lcom/android/settings/display/FluencyModeListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 65
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/display/FluencyModeListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    check-cast p1, Lcom/android/settings/display/FluencyModeListPreference$SavedState;

    .line 72
    invoke-virtual {p1}, Lcom/android/settings/display/FluencyModeListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 73
    iget v0, p1, Lcom/android/settings/display/FluencyModeListPreference$SavedState;->value:I

    iput v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yh:I

    .line 74
    iget v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->mStatus:I

    iget v1, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yh:I

    if-eq v0, v1, :cond_1

    .line 75
    iget v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yh:I

    invoke-direct {p0, v0}, Lcom/android/settings/display/FluencyModeListPreference;->showDialog(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/android/settings/display/FluencyModeListPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/display/FluencyModeListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 59
    iget v0, p0, Lcom/android/settings/display/FluencyModeListPreference;->Yh:I

    iput v0, v1, Lcom/android/settings/display/FluencyModeListPreference$SavedState;->value:I

    .line 60
    return-object v1
.end method
