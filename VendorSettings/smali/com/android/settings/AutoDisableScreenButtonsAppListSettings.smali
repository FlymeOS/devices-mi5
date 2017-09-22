.class public Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;
.super Lcom/android/vendorsettings/BaseFragment;
.source "AutoDisableScreenButtonsAppListSettings.java"


# static fields
.field public static final bC:[I


# instance fields
.field private bA:Lcom/android/vendorsettings/R;

.field public bB:[Ljava/lang/String;

.field private bD:Landroid/content/BroadcastReceiver;

.field private bE:Ljava/util/List;

.field private bF:Ljava/util/List;

.field private bx:Landroid/view/LayoutInflater;

.field private by:Lcom/android/vendorsettings/q;

.field private bz:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bC:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseFragment;-><init>()V

    .line 150
    new-instance v0, Lcom/android/vendorsettings/N;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/N;-><init>(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bD:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bE:Ljava/util/List;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bF:Ljava/util/List;

    .line 273
    return-void
.end method

.method private P()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    new-instance v0, Lcom/android/vendorsettings/O;

    invoke-virtual {p0}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/O;-><init>(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;Landroid/app/FragmentManager;)V

    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/O;->setMessage(I)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 229
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 235
    const v0, 0x7f0c114f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 237
    const v0, 0x7f0c1150

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 239
    const v0, 0x7f0c1151

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->P()V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bE:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bF:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/vendorsettings/R;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bA:Lcom/android/vendorsettings/R;

    return-object v0
.end method

.method static synthetic f(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic g(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bx:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic h(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/vendorsettings/q;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->by:Lcom/android/vendorsettings/q;

    return-object v0
.end method

.method static synthetic i(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/android/vendorsettings/q;

    iget-object v1, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->by:Lcom/android/vendorsettings/q;

    .line 88
    invoke-virtual {p0}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bD:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0c114f

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0c1150

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0c1151

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bB:[Ljava/lang/String;

    .line 103
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bD:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->by:Lcom/android/vendorsettings/q;

    invoke-virtual {v0}, Lcom/android/vendorsettings/q;->stop()V

    .line 143
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->mDialog:Landroid/app/Dialog;

    .line 147
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onDestroy()V

    .line 148
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bx:Landroid/view/LayoutInflater;

    .line 109
    const v0, 0x7f04001b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 111
    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 114
    instance-of v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 115
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 118
    :cond_0
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onResume()V

    .line 135
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    const v0, 0x7f13003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bz:Landroid/widget/ListView;

    .line 126
    new-instance v0, Lcom/android/vendorsettings/R;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/R;-><init>(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)V

    iput-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bA:Lcom/android/vendorsettings/R;

    .line 127
    iget-object v0, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->bA:Lcom/android/vendorsettings/R;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    invoke-direct {p0}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->P()V

    .line 129
    return-void
.end method
