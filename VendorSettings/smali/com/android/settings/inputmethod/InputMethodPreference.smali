.class Lcom/android/vendorsettings/inputmethod/InputMethodPreference;
.super Landroid/preference/CheckBoxPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final afX:Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;

.field private final agk:Z

.field private final agl:Lcom/android/vendorsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

.field private final agm:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/vendorsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object v3, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setPersistent(Z)V

    .line 95
    iput-object p2, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 96
    iput-boolean p4, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->agm:Z

    .line 97
    iput-object p5, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->agl:Lcom/android/vendorsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .line 98
    if-nez p3, :cond_0

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 106
    :cond_0
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    .line 117
    :goto_0
    invoke-static {p1}, Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;->bB(Landroid/content/Context;)Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->afX:Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;

    .line 118
    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->afX:Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1, p2, p1}, Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;->b(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->agk:Z

    .line 120
    invoke-virtual {p0, p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    invoke-virtual {p0, p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    return-void

    .line 113
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)Lcom/android/vendorsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->agl:Lcom/android/vendorsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    return-object v0
.end method

.method private c(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 217
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 221
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 223
    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 226
    const v3, 0x7f0c0618

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 227
    const v0, 0x104000a

    new-instance v2, Lcom/android/vendorsettings/inputmethod/InputMethodPreference$1;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    const/high16 v0, 0x1040000

    new-instance v2, Lcom/android/vendorsettings/inputmethod/InputMethodPreference$2;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 246
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 247
    return-void
.end method

.method static synthetic c(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->notifyChanged()V

    return-void
.end method

.method static synthetic d(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->notifyChanged()V

    return-void
.end method

.method private rp()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->getWidgetLayoutResource()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rr()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private rs()Ljava/lang/String;
    .locals 6

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 201
    iget-boolean v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->agm:Z

    if-nez v0, :cond_0

    .line 202
    const v0, 0x7f0c06ba

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->rr()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 205
    iget-object v2, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 208
    iget-object v4, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 210
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_1
    const-string v0, ", "

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;Ljava/text/Collator;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 250
    if-ne p0, p1, :cond_1

    .line 251
    const/4 v0, 0x0

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 253
    :cond_1
    iget-boolean v2, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->agk:Z

    iget-boolean v3, p1, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->agk:Z

    if-ne v2, v3, :cond_3

    .line 254
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 255
    invoke-virtual {p1}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 256
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 257
    goto :goto_0

    .line 259
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 265
    :cond_3
    iget-boolean v2, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->agk:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->rp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return v1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->agl:Lcom/android/vendorsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->a(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->agl:Lcom/android/vendorsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->a(Lcom/android/vendorsettings/inputmethod/InputMethodPreference;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->c(Landroid/view/inputmethod/InputMethodInfo;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 163
    invoke-direct {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->rp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v6

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    sget-object v2, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    const-string v3, "IME\'s Settings Activity Not Found"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const v0, 0x7f0c061c

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public ro()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method rq()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->afX:Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;->a(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v0

    .line 190
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->rp()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->agm:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->afX:Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;->d(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setChecked(Z)V

    .line 192
    invoke-direct {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->rs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
