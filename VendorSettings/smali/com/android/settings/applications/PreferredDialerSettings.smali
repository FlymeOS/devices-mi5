.class public Lcom/android/settings/applications/PreferredDialerSettings;
.super Lmiui/app/ListActivity;
.source "PreferredDialerSettings.java"


# instance fields
.field private KH:Ljava/lang/String;

.field private KI:Ljava/lang/String;

.field private KJ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/app/ListActivity;-><init>()V

    .line 207
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/PreferredDialerSettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings;->KI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/PreferredDialerSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/applications/PreferredDialerSettings;->au(Ljava/lang/String;)V

    return-void
.end method

.method private at(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 111
    :goto_0
    return-object p1

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private au(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/PreferredDialerSettings;->KI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lcom/android/settings/applications/PreferredDialerSettings;->KI:Ljava/lang/String;

    .line 158
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/PreferredDialerSettings;->KI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->setDefaultDialer(Ljava/lang/String;)Z

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;

    .line 160
    invoke-virtual {v0}, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->notifyDataSetChanged()V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->kU()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 165
    if-nez v6, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [Landroid/content/ComponentName;

    .line 169
    const/4 v2, 0x0

    .line 170
    const/high16 v0, -0x80000000

    move v5, v1

    move v4, v1

    move v1, v0

    .line 171
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 172
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 173
    new-instance v3, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 176
    if-eqz v2, :cond_2

    iget v8, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v1, v8, :cond_3

    .line 178
    :cond_2
    iget v1, v0, Landroid/content/pm/ResolveInfo;->priority:I

    move-object v2, v3

    .line 181
    :cond_3
    iget v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v8, v4, :cond_5

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 182
    :goto_2
    aput-object v3, v7, v5

    .line 171
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v4, v0

    goto :goto_1

    .line 184
    :cond_4
    if-eqz v2, :cond_0

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 191
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v7, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_2
.end method

.method private getDefaultDialerPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->kU()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private kU()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    const-string v1, "tel"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 80
    return-object v0
.end method

.method private kV()Ljava/util/List;
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->kU()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 94
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 95
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-direct {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings;->KI:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preferred_label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings;->KH:Ljava/lang/String;

    .line 64
    const-string v0, "com.android.contacts"

    invoke-direct {p0, v0}, Lcom/android/settings/applications/PreferredDialerSettings;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings;->KJ:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->kV()Ljava/util/List;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    new-instance v3, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;-><init>(Lcom/android/settings/applications/PreferredDialerSettings;)V

    .line 70
    iput-object v0, v3, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;->packageName:Ljava/lang/String;

    .line 71
    invoke-direct {p0, v0}, Lcom/android/settings/applications/PreferredDialerSettings;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;->KM:Ljava/lang/String;

    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;-><init>(Lcom/android/settings/applications/PreferredDialerSettings;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PreferredDialerSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 116
    invoke-super/range {p0 .. p5}, Lmiui/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;

    .line 118
    invoke-virtual {v0, p3}, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationListAdapter;->aU(I)Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;

    move-result-object v2

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/PreferredDialerSettings;->KI:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredDialerSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, v2, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_1
    if-eqz v0, :cond_0

    .line 133
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 134
    const v0, 0x7f0c0d7c

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/applications/PreferredDialerSettings;->KJ:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/applications/PreferredDialerSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const v3, 0x7f0c0d7e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/applications/PreferredDialerSettings;->KJ:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/settings/applications/PreferredDialerSettings;->KJ:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/applications/PreferredDialerSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 137
    const v4, 0x7f0c0d80

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/applications/PreferredDialerSettings;->KJ:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/applications/PreferredDialerSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 139
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0c0d7f

    new-instance v5, Lcom/android/settings/applications/PreferredDialerSettings$1;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/applications/PreferredDialerSettings$1;-><init>(Lcom/android/settings/applications/PreferredDialerSettings;Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 150
    :cond_2
    iget-object v0, v2, Lcom/android/settings/applications/PreferredDialerSettings$DialerApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/PreferredDialerSettings;->au(Ljava/lang/String;)V

    goto :goto_0
.end method
