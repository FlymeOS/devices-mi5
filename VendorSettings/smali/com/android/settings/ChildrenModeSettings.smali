.class public Lcom/android/settings/ChildrenModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChildrenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static db:I

.field public static final o:Ljava/util/HashSet;


# instance fields
.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private dc:Landroid/preference/Preference;

.field private dd:Landroid/preference/CheckBoxPreference;

.field private de:Landroid/preference/CheckBoxPreference;

.field private df:Landroid/preference/PreferenceGroup;

.field private dg:Landroid/preference/CheckBoxPreference;

.field private dh:Z

.field private di:Z

.field dj:Landroid/view/View$OnKeyListener;

.field private dk:Z

.field private i:Landroid/content/pm/PackageManager;

.field private m:Lmiui/security/SecurityManager;

.field private final n:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/ChildrenModeSettings;->db:I

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/ChildrenModeSettings;->o:Ljava/util/HashSet;

    .line 74
    sget-object v0, Lcom/android/settings/ChildrenModeSettings;->o:Ljava/util/HashSet;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/settings/ChildrenModeSettings;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/android/settings/ChildrenModeSettings;->dh:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/settings/ChildrenModeSettings;->di:Z

    .line 51
    new-instance v0, Lcom/android/settings/aq;

    invoke-direct {v0, p0}, Lcom/android/settings/aq;-><init>(Lcom/android/settings/ChildrenModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->n:Ljava/util/Comparator;

    .line 83
    new-instance v0, Lcom/android/settings/ar;

    invoke-direct {v0, p0}, Lcom/android/settings/ar;-><init>(Lcom/android/settings/ChildrenModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->dj:Landroid/view/View$OnKeyListener;

    .line 113
    iput-boolean v1, p0, Lcom/android/settings/ChildrenModeSettings;->dk:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/ChildrenModeSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->i:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/ChildrenModeSettings;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ChildrenModeSettings;->a(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->n:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 238
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 268
    :cond_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/at;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/settings/at;-><init>(Lcom/android/settings/ChildrenModeSettings;Landroid/content/pm/ApplicationInfo;Z)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/ChildrenModeSettings;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/ChildrenModeSettings;->m(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private am()V
    .locals 3

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/settings/ChildrenModeSettings;->di:Z

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChildrenModeSettings;->di:Z

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.PrivacyPasswordConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "android.app.action.PRIVACY_PASSWORD_CONFIRM_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChildrenModeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 186
    :cond_0
    return-void
.end method

.method private an()V
    .locals 3

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.PrivacyPasswordChooseLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v1, "android.app.action.PRIVACY_PASSWORD_SET_NEW_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    sget v1, Lcom/android/settings/ChildrenModeSettings;->db:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChildrenModeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 310
    return-void
.end method

.method private ao()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 314
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/ChildrenModeSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->dd:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/ChildrenModeSettings;)Lmiui/security/SecurityManager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->m:Lmiui/security/SecurityManager;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/ChildrenModeSettings;)Landroid/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->df:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 219
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/settings/ChildrenModeSettings;->addPreferencesFromResource(I)V

    .line 220
    const-string v0, "tips"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChildrenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->dc:Landroid/preference/Preference;

    .line 221
    const-string v0, "children_mode_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChildrenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->dd:Landroid/preference/CheckBoxPreference;

    .line 222
    const-string v0, "deny_sms_permission"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChildrenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->de:Landroid/preference/CheckBoxPreference;

    .line 223
    const-string v0, "access_apps_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChildrenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->df:Landroid/preference/PreferenceGroup;

    .line 224
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->dd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 225
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChildrenModeSettings;->de:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->de:Landroid/preference/CheckBoxPreference;

    .line 231
    :goto_0
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 232
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->de:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private m(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/settings/ChildrenModeSettings;->ao()Landroid/content/Intent;

    move-result-object v0

    .line 320
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    iget-object v1, p0, Lcom/android/settings/ChildrenModeSettings;->i:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/android/settings/ChildrenModeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->dg:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/ChildrenModeSettings;->db:I

    if-ne p1, v0, :cond_0

    .line 192
    if-ne p2, v3, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->dg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->dg:Landroid/preference/CheckBoxPreference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChildrenModeSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 197
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChildrenModeSettings;->di:Z

    .line 199
    if-ne p2, v3, :cond_2

    .line 200
    iput-boolean v2, p0, Lcom/android/settings/ChildrenModeSettings;->dh:Z

    .line 205
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "security"

    invoke-virtual {p0, v0}, Lcom/android/settings/ChildrenModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->m:Lmiui/security/SecurityManager;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->i:Landroid/content/pm/PackageManager;

    .line 110
    invoke-direct {p0}, Lcom/android/settings/ChildrenModeSettings;->h()V

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChildrenModeSettings;->dh:Z

    .line 211
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->dd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 212
    iget-boolean v1, p0, Lcom/android/settings/ChildrenModeSettings;->dk:Z

    if-eq v1, v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.CHILDREN_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 272
    check-cast p2, Ljava/lang/Boolean;

    .line 273
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyPasswordEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/ChildrenModeSettings;->dg:Landroid/preference/CheckBoxPreference;

    .line 275
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/android/settings/ChildrenModeSettings;->an()V

    .line 278
    :cond_0
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->dd:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_5

    .line 280
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->de:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->de:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->df:Landroid/preference/PreferenceGroup;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 284
    iget-object v2, p0, Lcom/android/settings/ChildrenModeSettings;->dc:Landroid/preference/Preference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0c10dd

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 285
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    invoke-direct {p0}, Lcom/android/settings/ChildrenModeSettings;->am()V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "children_mode_enabled"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 288
    const-string v0, "child_setting"

    const-string v2, "on"

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v0, v1

    .line 293
    goto :goto_0

    .line 284
    :cond_3
    const v0, 0x7f0c10de

    goto :goto_1

    .line 290
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "children_mode_enabled"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 291
    const-string v0, "child_setting"

    const-string v2, "off"

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->de:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_6

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "children_mode_deny_sms_permission"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    move v0, v1

    .line 296
    goto :goto_0

    .line 298
    :cond_6
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 299
    iget-object v2, p0, Lcom/android/settings/ChildrenModeSettings;->m:Lmiui/security/SecurityManager;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lmiui/security/SecurityManager;->setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V

    move v0, v1

    .line 300
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChildrenModeSettings;->dj:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "children_mode_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ChildrenModeSettings;->dk:Z

    .line 126
    iget-boolean v0, p0, Lcom/android/settings/ChildrenModeSettings;->dk:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/ChildrenModeSettings;->dh:Z

    if-nez v0, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/android/settings/ChildrenModeSettings;->am()V

    .line 175
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->dd:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/ChildrenModeSettings;->dk:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->df:Landroid/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/android/settings/ChildrenModeSettings;->dk:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/ChildrenModeSettings;->dc:Landroid/preference/Preference;

    iget-boolean v0, p0, Lcom/android/settings/ChildrenModeSettings;->dk:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0c10dd

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/ChildrenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "children_mode_deny_sms_permission"

    invoke-static {v0, v1, v4}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/android/settings/ChildrenModeSettings;->de:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/android/settings/ChildrenModeSettings;->de:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->de:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/ChildrenModeSettings;->dk:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->df:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/ChildrenModeSettings;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v3, Lcom/android/settings/as;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/settings/as;-><init>(Lcom/android/settings/ChildrenModeSettings;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcom/android/settings/as;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 131
    :cond_3
    const v0, 0x7f0c10de

    goto :goto_1
.end method
