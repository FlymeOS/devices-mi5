.class public Lcom/android/settings/applications/ResolverSettings;
.super Lcom/android/settings/BaseFragment;
.source "ResolverSettings.java"


# instance fields
.field private MF:Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;

.field private MG:Lmiui/widget/DynamicListView;

.field private MH:I

.field protected MI:Z

.field private MJ:Ljava/util/List;

.field private MK:Landroid/util/SparseArray;

.field private ML:Ljava/util/List;

.field private MM:Ljava/util/Map;

.field private MN:Lmiui/widget/DynamicListView$RearrangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ResolverSettings;->MI:Z

    .line 122
    new-instance v0, Lcom/android/settings/applications/ResolverSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ResolverSettings$1;-><init>(Lcom/android/settings/applications/ResolverSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MN:Lmiui/widget/DynamicListView$RearrangeListener;

    .line 210
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ResolverSettings;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ResolverSettings;->g(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/ResolverSettings;)Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MF:Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/applications/ResolverSettings;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/applications/ResolverSettings;->MH:I

    return v0
.end method

.method static synthetic c(Lcom/android/settings/applications/ResolverSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/applications/ResolverSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/applications/ResolverSettings;)Lmiui/widget/DynamicListView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MG:Lmiui/widget/DynamicListView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/applications/ResolverSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->ML:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/applications/ResolverSettings;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MM:Ljava/util/Map;

    return-object v0
.end method

.method private g(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings/applications/ResolverSettings;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/applications/ResolverSettings;->lm()V

    return-void
.end method

.method static synthetic h(Lcom/android/settings/applications/ResolverSettings;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MK:Landroid/util/SparseArray;

    return-object v0
.end method

.method private lm()V
    .locals 5

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MM:Ljava/util/Map;

    .line 77
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ResolverSettings;->ML:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/settings/applications/ResolverSettings;->MM:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/applications/ResolverSettings;->ML:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MK:Landroid/util/SparseArray;

    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 83
    invoke-direct {p0, v0}, Lcom/android/settings/applications/ResolverSettings;->g(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 84
    iget-object v3, p0, Lcom/android/settings/applications/ResolverSettings;->MM:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/android/settings/applications/ResolverSettings;->MK:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/settings/applications/ResolverSettings;->MM:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/ResolverSettings;->ML:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 88
    iget-object v4, p0, Lcom/android/settings/applications/ResolverSettings;->MK:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MM:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->ML:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ResolverSettings;->MI:Z

    goto :goto_1

    .line 94
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 106
    const v0, 0x7f04011f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 107
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/DynamicListView;

    iput-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MG:Lmiui/widget/DynamicListView;

    .line 108
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/applications/ResolverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rlist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MJ:Ljava/util/List;

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MJ:Ljava/util/List;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MJ:Ljava/util/List;

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ResolverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getActivityResolveOrder(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->ML:Ljava/util/List;

    .line 67
    invoke-direct {p0}, Lcom/android/settings/applications/ResolverSettings;->lm()V

    .line 69
    new-instance v0, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;-><init>(Lcom/android/settings/applications/ResolverSettings;Lcom/android/settings/applications/ResolverSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MF:Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MF:Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ResolverSettings;->MK:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->d(Landroid/util/SparseArray;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/applications/ResolverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 72
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ResolverSettings;->MH:I

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDestroy()V

    .line 99
    iget-boolean v0, p0, Lcom/android/settings/applications/ResolverSettings;->MI:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/applications/ResolverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ResolverSettings;->ML:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$System;->putActivityResolveOrder(Landroid/content/ContentResolver;Ljava/util/List;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MG:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lcom/android/settings/applications/ResolverSettings;->MF:Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->MG:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lcom/android/settings/applications/ResolverSettings;->MN:Lmiui/widget/DynamicListView$RearrangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->setRearrangeListener(Lmiui/widget/DynamicListView$RearrangeListener;)V

    .line 116
    return-void
.end method
