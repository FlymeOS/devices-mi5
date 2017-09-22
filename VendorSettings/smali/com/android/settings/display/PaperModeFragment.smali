.class public Lcom/android/settings/display/PaperModeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaperModeFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/display/A;


# static fields
.field private static Ze:I

.field private static Zf:I


# instance fields
.field private YZ:Landroid/database/ContentObserver;

.field private Za:Lcom/android/settings/dndmode/LabelPreference;

.field private Zb:Lcom/android/settings/dndmode/LabelPreference;

.field private Zc:Landroid/preference/CheckBoxPreference;

.field private Zd:Landroid/preference/CheckBoxPreference;

.field private Zg:Z

.field private Zh:Lmiui/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zg:Z

    .line 103
    new-instance v0, Lcom/android/settings/display/y;

    invoke-direct {v0, p0}, Lcom/android/settings/display/y;-><init>(Lcom/android/settings/display/PaperModeFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zh:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/PaperModeFragment;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeFragment;->bK(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/display/PaperModeFragment;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zg:Z

    return v0
.end method

.method private aL(Z)V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 258
    return-void
.end method

.method private aM(Z)V
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 263
    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/settings/display/PaperModeFragment;->Zf:I

    return v0
.end method

.method static synthetic b(Lcom/android/settings/display/PaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Za:Lcom/android/settings/dndmode/LabelPreference;

    return-object v0
.end method

.method private bI(I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 266
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->pA()I

    move-result v2

    if-eq p1, v2, :cond_2

    .line 267
    const-string v2, "persist.sys.eyecare_cache"

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->pB()I

    move-result v2

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_paper_mode_time_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 274
    :cond_0
    if-ne v2, v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->isInPaperModeTimeSchedule(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    :cond_1
    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->setScreenPaperMode(Z)V

    .line 279
    :cond_2
    return-void
.end method

.method private bJ(I)V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    return-void
.end method

.method private bK(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/settings/display/PaperModeFragment;->bL(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bL(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic bM(I)I
    .locals 0

    .prologue
    .line 66
    sput p0, Lcom/android/settings/display/PaperModeFragment;->Ze:I

    return p0
.end method

.method static synthetic bN(I)I
    .locals 0

    .prologue
    .line 66
    sput p0, Lcom/android/settings/display/PaperModeFragment;->Zf:I

    return p0
.end method

.method public static bj(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bk(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode_time_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/settings/display/PaperModeFragment;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zb:Lcom/android/settings/dndmode/LabelPreference;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/display/PaperModeFragment;)I
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->pB()I

    move-result v0

    return v0
.end method

.method private pA()I
    .locals 2

    .prologue
    .line 282
    const-string v0, "persist.sys.eyecare_cache"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private pB()I
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic pC()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/settings/display/PaperModeFragment;->Ze:I

    return v0
.end method


# virtual methods
.method public a(Lmiui/preference/RadioButtonPreference;)V
    .locals 6

    .prologue
    .line 236
    invoke-virtual {p1}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v1, "pape_mode_local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-class v0, Lcom/android/settings/display/PaperModeSetAppsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0c0f0b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/display/PaperModeFragment;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 241
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-class v0, Lcom/android/settings/display/PaperModeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->addPreferencesFromResource(I)V

    .line 130
    const-string v0, "paper_mode_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zd:Landroid/preference/CheckBoxPreference;

    .line 132
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->bj(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    const-string v0, "paper_mode_time_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zc:Landroid/preference/CheckBoxPreference;

    .line 137
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/display/PaperModeFragment;->bk(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/F;->bo(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/settings/display/PaperModeFragment;->Ze:I

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/F;->bp(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/settings/display/PaperModeFragment;->Zf:I

    .line 142
    const-string v0, "paper_mode_start_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Za:Lcom/android/settings/dndmode/LabelPreference;

    .line 143
    const-string v0, "paper_mode_end_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zb:Lcom/android/settings/dndmode/LabelPreference;

    .line 144
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Za:Lcom/android/settings/dndmode/LabelPreference;

    sget v1, Lcom/android/settings/display/PaperModeFragment;->Ze:I

    invoke-direct {p0, v1}, Lcom/android/settings/display/PaperModeFragment;->bK(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zb:Lcom/android/settings/dndmode/LabelPreference;

    sget v1, Lcom/android/settings/display/PaperModeFragment;->Zf:I

    invoke-direct {p0, v1}, Lcom/android/settings/display/PaperModeFragment;->bK(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Za:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zb:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 149
    const-string v0, "paper_mode_adjust_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SeekBarPreference;

    .line 151
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    .line 152
    invoke-virtual {v0}, Lcom/android/settings/SeekBarPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "paper_mode_adjust_level"

    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->pA()I

    move-result v5

    mul-int/lit8 v5, v5, 0xe

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 154
    invoke-virtual {v0, v2}, Lcom/android/settings/SeekBarPreference;->V(Z)V

    .line 156
    invoke-virtual {v0, p0}, Lcom/android/settings/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    const-string v0, "pape_mode_global"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/PaperModePreference;

    .line 160
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->pB()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/display/PaperModePreference;->setChecked(Z)V

    .line 161
    invoke-virtual {v0, p0}, Lcom/android/settings/display/PaperModePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 162
    const-string v1, "pape_mode_local"

    invoke-virtual {p0, v1}, Lcom/android/settings/display/PaperModeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/display/PaperModePreference;

    .line 164
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeFragment;->pB()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/settings/display/PaperModePreference;->setChecked(Z)V

    .line 165
    invoke-virtual {v1, p0}, Lcom/android/settings/display/PaperModePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 166
    invoke-virtual {v1, p0}, Lcom/android/settings/display/PaperModePreference;->a(Lcom/android/settings/display/A;)V

    .line 167
    invoke-virtual {v1, v2}, Lcom/android/settings/display/PaperModePreference;->setShowRightArrow(Z)V

    .line 169
    new-instance v2, Lcom/android/settings/display/z;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4, v0, v1}, Lcom/android/settings/display/z;-><init>(Lcom/android/settings/display/PaperModeFragment;Landroid/os/Handler;Lcom/android/settings/display/PaperModePreference;Lcom/android/settings/display/PaperModePreference;)V

    iput-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->YZ:Landroid/database/ContentObserver;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_paper_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->YZ:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    return-void

    :cond_0
    move v1, v3

    .line 160
    goto :goto_0

    :cond_1
    move v4, v3

    .line 164
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->YZ:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->YZ:Landroid/database/ContentObserver;

    .line 310
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 311
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "paper_mode_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/settings/display/PaperModeFragment;->Zd:Landroid/preference/CheckBoxPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 190
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->aL(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/F;->bl(Landroid/content/Context;)V

    .line 200
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_1
    const-string v1, "paper_mode_time_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 193
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->aM(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->Zc:Landroid/preference/CheckBoxPreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/F;->bl(Landroid/content/Context;)V

    goto :goto_0

    .line 196
    :cond_2
    const-string v1, "paper_mode_adjust_level"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 198
    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x41600000    # 14.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->bI(I)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 205
    new-instance v0, Lmiui/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/PaperModeFragment;->Zh:Lmiui/app/TimePickerDialog$OnTimeSetListener;

    sget v3, Lcom/android/settings/display/PaperModeFragment;->Ze:I

    div-int/lit8 v3, v3, 0x3c

    sget v4, Lcom/android/settings/display/PaperModeFragment;->Ze:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-direct/range {v0 .. v5}, Lmiui/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiui/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 208
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 209
    const-string v2, "pape_mode_global"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-direct {p0, v5}, Lcom/android/settings/display/PaperModeFragment;->bJ(I)V

    .line 230
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/PaperModeFragment;->YZ:Landroid/database/ContentObserver;

    invoke-virtual {v0, v6}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 231
    return v6

    .line 211
    :cond_1
    const-string v2, "pape_mode_local"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/display/PaperModeFragment;->bJ(I)V

    goto :goto_0

    .line 213
    :cond_2
    const-string v2, "paper_mode_start_time"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 214
    iput-boolean v6, p0, Lcom/android/settings/display/PaperModeFragment;->Zg:Z

    .line 215
    sget v1, Lcom/android/settings/display/PaperModeFragment;->Ze:I

    if-lez v1, :cond_3

    .line 216
    sget v1, Lcom/android/settings/display/PaperModeFragment;->Ze:I

    div-int/lit8 v1, v1, 0x3c

    sget v2, Lcom/android/settings/display/PaperModeFragment;->Ze:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    .line 220
    :goto_1
    invoke-virtual {v0}, Lmiui/app/TimePickerDialog;->show()V

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v0, v6, v6}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_1

    .line 221
    :cond_4
    const-string v2, "paper_mode_end_time"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iput-boolean v5, p0, Lcom/android/settings/display/PaperModeFragment;->Zg:Z

    .line 223
    sget v1, Lcom/android/settings/display/PaperModeFragment;->Zf:I

    if-lez v1, :cond_5

    .line 224
    sget v1, Lcom/android/settings/display/PaperModeFragment;->Zf:I

    div-int/lit8 v1, v1, 0x3c

    sget v2, Lcom/android/settings/display/PaperModeFragment;->Zf:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    .line 228
    :goto_2
    invoke-virtual {v0}, Lmiui/app/TimePickerDialog;->show()V

    goto :goto_0

    .line 226
    :cond_5
    invoke-virtual {v0, v6, v6}, Lmiui/app/TimePickerDialog;->updateTime(II)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 315
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 316
    return-void
.end method
