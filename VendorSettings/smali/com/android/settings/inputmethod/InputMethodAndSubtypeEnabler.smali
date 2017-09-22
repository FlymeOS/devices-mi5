.class public Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;
.super Lcom/android/vendorsettings/SettingsPreferenceFragment;
.source "InputMethodAndSubtypeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private agc:Z

.field private final agd:Ljava/util/HashMap;

.field private final age:Ljava/util/HashMap;

.field private agf:Ljava/util/List;

.field private br:Ljava/text/Collator;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agd:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->age:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;)Ljava/text/Collator;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->br:Ljava/text/Collator;

    return-object v0
.end method

.method private a(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/PreferenceScreen;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 168
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v5

    .line 169
    const/4 v0, 0x1

    if-gt v5, v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 173
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 175
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 176
    invoke-virtual {p1, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 181
    new-instance v7, Lcom/android/vendorsettings/inputmethod/SwitchWithNoTextPreference;

    invoke-direct {v7, v4}, Lcom/android/vendorsettings/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    .line 182
    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->age:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 184
    invoke-virtual {v7, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    new-instance v8, Landroid/preference/PreferenceCategory;

    invoke-direct {v8, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 187
    const v0, 0x7f0c0647

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 188
    invoke-virtual {p2, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 190
    const/4 v1, 0x0

    .line 191
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 192
    :goto_1
    if-ge v3, v5, :cond_3

    .line 193
    invoke-virtual {p1, v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 195
    if-nez v1, :cond_2

    .line 196
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4, v1, v10}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 192
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 200
    :cond_1
    new-instance v10, Lcom/android/vendorsettings/inputmethod/InputMethodSubtypePreference;

    invoke-direct {v10, v4, v0, p1}, Lcom/android/vendorsettings/inputmethod/InputMethodSubtypePreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V

    .line 202
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 205
    :cond_3
    new-instance v0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler$1;-><init>(Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;)V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 215
    :goto_3
    if-ge v2, v3, :cond_4

    .line 216
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 217
    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 218
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    invoke-static {v0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeUtil;->l(Landroid/preference/Preference;)V

    .line 215
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agd:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    const v0, 0x7f0c0648

    invoke-virtual {v7, v0}, Landroid/preference/TwoStatePreference;->setTitle(I)V

    goto/16 :goto_0

    .line 226
    :cond_5
    invoke-virtual {v7, v1}, Landroid/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/view/inputmethod/InputMethodInfo;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 283
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 284
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agd:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 285
    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, p1, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    .line 287
    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 306
    :cond_0
    return-void

    .line 290
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 291
    instance-of v1, v0, Landroid/preference/TwoStatePreference;

    if-eqz v1, :cond_2

    .line 294
    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 295
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 296
    if-eqz p2, :cond_2

    .line 297
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    invoke-virtual {v0, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private bc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private bd(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 233
    instance-of v2, v0, Landroid/preference/TwoStatePreference;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->age:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 243
    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {v0, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 249
    instance-of v1, v0, Landroid/preference/TwoStatePreference;

    if-eqz v1, :cond_2

    .line 253
    if-nez p2, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 254
    if-eqz p2, :cond_2

    .line 255
    check-cast v0, Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v1, v3

    .line 253
    goto :goto_2

    .line 259
    :cond_4
    if-eqz p2, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agf:Ljava/util/List;

    iget-boolean v3, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agc:Z

    invoke-static {p0, v0, v1, v3}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/vendorsettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 262
    invoke-direct {p0, p1, v2}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->d(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 269
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 270
    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->age:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/TwoStatePreference;

    .line 273
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 277
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->a(Landroid/view/inputmethod/InputMethodInfo;Z)V

    goto :goto_0

    .line 280
    :cond_2
    return-void
.end method

.method private rn()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agd:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->bd(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->c(Ljava/lang/String;Z)V

    goto :goto_0

    .line 312
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->d(Ljava/lang/String;Z)V

    .line 313
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "android.intent.extra.TITLE"

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->bc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 70
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 71
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agc:Z

    .line 77
    const-string v0, "input_method_id"

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->bc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agf:Ljava/util/List;

    .line 81
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->br:Ljava/text/Collator;

    .line 83
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 84
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 85
    :goto_1
    if-ge v1, v4, :cond_3

    .line 86
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agf:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 88
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->a(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/PreferenceScreen;)V

    .line 85
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 71
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 93
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onPause()V

    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->d(Ljava/lang/String;Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agf:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agc:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/vendorsettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 133
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v1

    .line 162
    :goto_0
    return v0

    .line 140
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 141
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->age:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    iget-object v5, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->age:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 144
    check-cast p1, Landroid/preference/TwoStatePreference;

    .line 145
    invoke-virtual {p1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 147
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->c(Ljava/lang/String;Z)V

    move v0, v2

    .line 148
    goto :goto_0

    .line 152
    :cond_2
    instance-of v0, p1, Lcom/android/vendorsettings/inputmethod/InputMethodSubtypePreference;

    if-eqz v0, :cond_4

    .line 153
    check-cast p1, Lcom/android/vendorsettings/inputmethod/InputMethodSubtypePreference;

    .line 154
    invoke-virtual {p1, v3}, Lcom/android/vendorsettings/inputmethod/InputMethodSubtypePreference;->setChecked(Z)V

    .line 155
    invoke-virtual {p1}, Lcom/android/vendorsettings/inputmethod/InputMethodSubtypePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    invoke-direct {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->rn()V

    :cond_3
    move v0, v2

    .line 160
    goto :goto_0

    :cond_4
    move v0, v1

    .line 162
    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/vendorsettings/SettingsPreferenceFragment;->onResume()V

    .line 119
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;->bB(Landroid/content/Context;)Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/inputmethod/InputMethodSettingValuesWrapper;->ru()V

    .line 121
    invoke-virtual {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agf:Ljava/util/List;

    iget-object v2, p0, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->agd:Ljava/util/HashMap;

    invoke-static {p0, v0, v1, v2}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeUtil;->a(Lcom/android/vendorsettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 123
    invoke-direct {p0}, Lcom/android/vendorsettings/inputmethod/InputMethodAndSubtypeEnabler;->rn()V

    .line 124
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x3c

    return v0
.end method
