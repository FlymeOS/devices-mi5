.class public Lcom/android/settings/inputmethod/SpellCheckersSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;
.implements Lcom/android/settings/widget/I;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private agH:Landroid/preference/Preference;

.field private agI:Landroid/view/textservice/SpellCheckerInfo;

.field private agJ:[Landroid/view/textservice/SpellCheckerInfo;

.field private agK:Landroid/view/textservice/TextServicesManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private me:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agK:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method private a(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    .line 146
    :cond_0
    if-nez p2, :cond_1

    .line 147
    const v0, 0x7f0c0648

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agK:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->rD()V

    .line 251
    return-void
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method

.method static synthetic access$100(I)I
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->cq(I)I

    move-result v0

    return v0
.end method

.method private b(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 222
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->rB()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 226
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 228
    const v2, 0x7f0c0619

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 230
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    const/high16 v0, 0x1040000

    new-instance v2, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 242
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 243
    return-void
.end method

.method static synthetic b(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->rD()V

    return-void
.end method

.method private static cp(I)I
    .locals 1

    .prologue
    .line 174
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private static cq(I)I
    .locals 1

    .prologue
    .line 175
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method private rC()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 84
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agJ:[Landroid/view/textservice/SpellCheckerInfo;

    if-nez v0, :cond_0

    move v0, v1

    .line 85
    :goto_0
    if-ge v1, v0, :cond_1

    .line 86
    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agJ:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v4, v4, v1

    .line 87
    new-instance v5, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    invoke-direct {v5, v3, v4, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;-><init>(Landroid/content/Context;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;)V

    .line 88
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 89
    invoke-static {v5}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->l(Landroid/preference/Preference;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agJ:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v0, v0

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method private rD()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agK:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agI:Landroid/view/textservice/SpellCheckerInfo;

    .line 117
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agI:Landroid/view/textservice/SpellCheckerInfo;

    if-nez v0, :cond_1

    .line 139
    :cond_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agK:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v4

    .line 122
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agK:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agH:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agI:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0, v3, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 129
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    move v3, v2

    .line 130
    :goto_0
    if-ge v3, v6, :cond_0

    .line 131
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 133
    instance-of v1, v0, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    if-eqz v1, :cond_2

    .line 134
    check-cast v0, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    .line 135
    invoke-virtual {v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->rB()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 136
    iget-object v7, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agI:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agI:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setSelected(Z)V

    .line 130
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 136
    goto :goto_1
.end method

.method private rE()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agK:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 182
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agK:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v4

    .line 184
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    const v1, 0x7f0c060e

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    .line 187
    add-int/lit8 v1, v6, 0x1

    new-array v7, v1, [Ljava/lang/CharSequence;

    .line 188
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v7, v0

    move v2, v0

    move v1, v0

    .line 190
    :goto_0
    if-ge v2, v6, :cond_1

    .line 191
    invoke-virtual {v3, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    .line 192
    invoke-static {v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->cp(I)I

    move-result v0

    .line 193
    invoke-direct {p0, v3, v8}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v0

    .line 194
    invoke-virtual {v8, v4}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 190
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 198
    :cond_1
    new-instance v0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v5, v7, v1, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 218
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 219
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/widget/Switch;Z)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agK:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, p2}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->rD()V

    .line 112
    return-void
.end method

.method public a(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->rB()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 167
    :goto_0
    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 172
    :goto_1
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->b(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->addPreferencesFromResource(I)V

    .line 72
    const-string v0, "spellchecker_language"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agH:Landroid/preference/Preference;

    .line 73
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agH:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 75
    const-string v0, "textservices"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agK:Landroid/view/textservice/TextServicesManager;

    .line 76
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agK:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agI:Landroid/view/textservice/SpellCheckerInfo;

    .line 77
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agK:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agJ:[Landroid/view/textservice/SpellCheckerInfo;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->rC()V

    .line 79
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/I;)V

    .line 106
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->agH:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->rE()V

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    invoke-virtual {v0}, Lcom/android/settings/hn;->hD()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->me:Lcom/android/settings/widget/SwitchBar;

    .line 97
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/I;)V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->rD()V

    .line 100
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x3b

    return v0
.end method
