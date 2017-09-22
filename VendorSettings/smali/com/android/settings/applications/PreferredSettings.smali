.class public Lcom/android/settings/applications/PreferredSettings;
.super Lmiui/app/ListActivity;
.source "PreferredSettings.java"


# instance fields
.field private KH:Ljava/lang/String;

.field private KS:Landroid/content/pm/ResolveInfo;

.field private KT:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lmiui/app/ListActivity;-><init>()V

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/PreferredSettings;)Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 2

    .prologue
    .line 187
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 143
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    .line 145
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->mPackageName:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;->f(Landroid/content/pm/ResolveInfo;)V

    .line 147
    invoke-virtual {v0}, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;->notifyDataSetChanged()V

    .line 148
    return-void
.end method

.method private e(Landroid/content/pm/ResolveInfo;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 154
    invoke-virtual {v0}, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;->getCount()I

    move-result v5

    .line 155
    new-array v6, v5, [Landroid/content/ComponentName;

    move v2, v3

    move v1, v3

    .line 157
    :goto_0
    if-ge v2, v5, :cond_1

    .line 158
    invoke-virtual {v0, v2}, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;->aV(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 159
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v6, v2

    .line 161
    iget v8, v7, Landroid/content/pm/ResolveInfo;->match:I

    if-le v8, v1, :cond_0

    iget v1, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 157
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/PreferredSettings;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/android/settings/applications/PreferredSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 172
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 173
    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 174
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 175
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 176
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v1, v6, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 181
    :goto_2
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->mPackageName:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;->f(Landroid/content/pm/ResolveInfo;)V

    .line 183
    invoke-virtual {v0}, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;->notifyDataSetChanged()V

    .line 184
    return-void

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "android.intent.category.HOME"

    iget-object v5, p0, Lcom/android/settings/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v5, v3}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/android/settings/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v5, Landroid/content/ComponentName;

    const-string v7, "com.no.such.packagename"

    const-string v8, "com.no.such.packagename.no.such.class"

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v1, v6, v5}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 169
    const-string v2, "com.no.such.packagename"

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 48
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 52
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    .line 53
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 57
    :goto_0
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lmiui/R$dimen;->preference_screen_padding_bottom:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 59
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preferred_app_intent_filter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/android/settings/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preferred_app_package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PreferredSettings;->mPackageName:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preferred_app_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preferred_label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PreferredSettings;->KH:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 72
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->KT:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 75
    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    aget-object v0, v0, v8

    iput-object v0, p0, Lcom/android/settings/applications/PreferredSettings;->KH:Ljava/lang/String;

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->KH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x20000

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 87
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 90
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 91
    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v3, :cond_2

    .line 92
    iput-object v0, p0, Lcom/android/settings/applications/PreferredSettings;->KS:Landroid/content/pm/ResolveInfo;

    :cond_2
    move v3, v2

    move v2, v1

    .line 94
    :goto_1
    if-ge v3, v2, :cond_8

    .line 95
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 96
    iget v6, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v7, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v6, v7, :cond_3

    iget-boolean v6, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v7, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v6, v7, :cond_5

    .line 98
    :cond_3
    :goto_2
    if-ge v3, v2, :cond_5

    .line 99
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 55
    :cond_4
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 103
    :cond_5
    iget-boolean v6, v1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v6, :cond_6

    .line 104
    iget-object v6, p0, Lcom/android/settings/applications/PreferredSettings;->KS:Landroid/content/pm/ResolveInfo;

    if-nez v6, :cond_7

    .line 105
    iput-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->KS:Landroid/content/pm/ResolveInfo;

    .line 94
    :cond_6
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 108
    :cond_7
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "android"

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 109
    if-nez v6, :cond_6

    .line 110
    iput-object v1, p0, Lcom/android/settings/applications/PreferredSettings;->KS:Landroid/content/pm/ResolveInfo;

    goto :goto_3

    .line 117
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;

    invoke-direct {v1, p0, p0, v5, v0}, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;-><init>(Lcom/android/settings/applications/PreferredSettings;Landroid/content/Context;Ljava/util/List;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/PreferredSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 123
    invoke-super/range {p0 .. p5}, Lmiui/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/applications/PreferredSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;

    .line 126
    invoke-virtual {v0, p3}, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;->aV(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 127
    invoke-virtual {v0}, Lcom/android/settings/applications/PreferredSettings$ResolveListAdapter;->kX()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/applications/PreferredSettings;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/PreferredSettings;->KH:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/PreferredSettings;->KT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0, v1}, Lcom/android/settings/applications/PreferredSettings;->d(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/applications/PreferredSettings;->e(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0
.end method
