.class public Lcom/android/settings/HomeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HomeSettings.java"

# interfaces
.implements Lcom/android/settings/search/k;


# static fields
.field public static final ig:Lcom/android/settings/search/l;


# instance fields
.field private bO:Landroid/preference/PreferenceGroup;

.field private bP:Ljava/util/ArrayList;

.field private i:Landroid/content/pm/PackageManager;

.field private nP:[Landroid/content/ComponentName;

.field private nQ:Lcom/android/settings/du;

.field private final nR:Landroid/content/IntentFilter;

.field private nS:Z

.field private nT:Lcom/android/settings/dv;

.field nU:Landroid/view/View$OnClickListener;

.field nV:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/android/settings/dt;

    invoke-direct {v0}, Lcom/android/settings/dt;-><init>()V

    sput-object v0, Lcom/android/settings/HomeSettings;->ig:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 87
    iput-object v1, p0, Lcom/android/settings/HomeSettings;->nQ:Lcom/android/settings/du;

    .line 90
    new-instance v0, Lcom/android/settings/dv;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dv;-><init>(Lcom/android/settings/HomeSettings;Lcom/android/settings/dq;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->nT:Lcom/android/settings/dv;

    .line 98
    new-instance v0, Lcom/android/settings/dq;

    invoke-direct {v0, p0}, Lcom/android/settings/dq;-><init>(Lcom/android/settings/HomeSettings;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->nU:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/android/settings/dr;

    invoke-direct {v0, p0}, Lcom/android/settings/dr;-><init>(Lcom/android/settings/HomeSettings;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->nV:Landroid/view/View$OnClickListener;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->nR:Landroid/content/IntentFilter;

    .line 94
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->nR:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->nR:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private J(I)Z
    .locals 1

    .prologue
    .line 258
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/HomeSettings;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/HomeSettings;->em()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/HomeSettings;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->bP:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/HomeSettings;)Lcom/android/settings/du;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->nQ:Lcom/android/settings/du;

    return-object v0
.end method

.method private c(Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 251
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v1}, Lcom/android/settings/HomeSettings;->J(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 253
    :goto_0
    return v0

    .line 252
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/HomeSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->i:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private em()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 181
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v2, p0, Lcom/android/settings/HomeSettings;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v14

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 185
    iput-object v3, p0, Lcom/android/settings/HomeSettings;->nQ:Lcom/android/settings/du;

    .line 186
    iget-object v3, p0, Lcom/android/settings/HomeSettings;->bO:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 187
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/HomeSettings;->bP:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/settings/HomeSettings;->nP:[Landroid/content/ComponentName;

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "support_managed_profiles"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 192
    invoke-direct {p0}, Lcom/android/settings/HomeSettings;->en()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    move v11, v1

    :goto_0
    move v12, v0

    move v4, v0

    .line 194
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_4

    .line 195
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 196
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 197
    new-instance v3, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->nP:[Landroid/content/ComponentName;

    aput-object v3, v1, v12

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 201
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 204
    if-eqz v11, :cond_3

    invoke-direct {p0, v0}, Lcom/android/settings/HomeSettings;->c(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 205
    new-instance v0, Lcom/android/settings/du;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0c039d

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v1, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/du;-><init>(Lcom/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V

    .line 213
    :goto_2
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->bP:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v1, p0, Lcom/android/settings/HomeSettings;->bO:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 215
    invoke-virtual {v3, v14}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    iput-object v0, p0, Lcom/android/settings/HomeSettings;->nQ:Lcom/android/settings/du;

    .line 218
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 194
    :goto_3
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_1

    :cond_2
    move v11, v0

    .line 192
    goto :goto_0

    .line 209
    :cond_3
    new-instance v0, Lcom/android/settings/du;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/du;-><init>(Lcom/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;ZLjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string v1, "HomeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem dealing with activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->nQ:Lcom/android/settings/du;

    if-eqz v0, :cond_6

    .line 225
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->nQ:Lcom/android/settings/du;

    invoke-virtual {v0}, Lcom/android/settings/du;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 229
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/ds;

    invoke-direct {v1, p0}, Lcom/android/settings/ds;-><init>(Lcom/android/settings/HomeSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    :cond_6
    return-void
.end method

.method private en()Z
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 239
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/HomeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 240
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 242
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/android/settings/du;)V
    .locals 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->nQ:Lcom/android/settings/du;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->nQ:Lcom/android/settings/du;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/du;->setChecked(Z)V

    .line 126
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/du;->setChecked(Z)V

    .line 127
    iput-object p1, p0, Lcom/android/settings/HomeSettings;->nQ:Lcom/android/settings/du;

    .line 129
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->i:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/HomeSettings;->nR:Landroid/content/IntentFilter;

    const/high16 v2, 0x100000

    iget-object v3, p0, Lcom/android/settings/HomeSettings;->nP:[Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/settings/du;->nX:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 133
    return-void
.end method

.method b(Lcom/android/settings/du;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/du;->oc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 138
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    const-string v1, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    iget-boolean v1, p1, Lcom/android/settings/du;->oa:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0xa

    .line 141
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/HomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/android/settings/HomeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/HomeSettings;->em()V

    .line 152
    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->nQ:Lcom/android/settings/du;

    if-nez v0, :cond_0

    move v1, v2

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->bP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->bP:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/du;

    .line 160
    iget-boolean v3, v0, Lcom/android/settings/du;->ob:Z

    if-eqz v3, :cond_3

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/settings/HomeSettings;->a(Lcom/android/settings/du;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->bP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 172
    iget-boolean v0, p0, Lcom/android/settings/HomeSettings;->nS:Z

    if-eqz v0, :cond_1

    .line 173
    iput-boolean v2, p0, Lcom/android/settings/HomeSettings;->nS:Z

    .line 174
    invoke-static {}, Lcom/android/settings/hn;->hH()V

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->hU()V

    .line 178
    :cond_2
    return-void

    .line 158
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 269
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/android/settings/HomeSettings;->addPreferencesFromResource(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->i:Landroid/content/pm/PackageManager;

    .line 272
    const-string v0, "home"

    invoke-virtual {p0, v0}, Lcom/android/settings/HomeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->bO:Landroid/preference/PreferenceGroup;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    const-string v2, "show"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/HomeSettings;->nS:Z

    .line 276
    return-void

    :cond_0
    move v0, v1

    .line 275
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/HomeSettings;->nT:Lcom/android/settings/dv;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 296
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 280
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 283
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/HomeSettings;->nT:Lcom/android/settings/dv;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    invoke-direct {p0}, Lcom/android/settings/HomeSettings;->em()V

    .line 290
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 263
    const/16 v0, 0x37

    return v0
.end method
