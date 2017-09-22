.class public Lcom/android/vendorsettings/applications/AppOpsDetails;
.super Lcom/android/vendorsettings/InstrumentedFragment;
.source "AppOpsDetails.java"


# instance fields
.field private FD:Landroid/widget/LinearLayout;

.field private Fj:Landroid/content/pm/PackageInfo;

.field private Fv:Lcom/android/vendorsettings/applications/AppOpsState;

.field private i:Landroid/content/pm/PackageManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/vendorsettings/InstrumentedFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private b(Landroid/content/pm/PackageInfo;)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f13001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 67
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 68
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/android/vendorsettings/applications/InstalledAppDetails;->a(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 70
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(ZZ)V
    .locals 3

    .prologue
    .line 151
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 152
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/hn;

    .line 154
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/vendorsettings/hn;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 155
    return-void
.end method

.method private jE()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    :goto_0
    if-nez v1, :cond_0

    .line 76
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    :goto_1
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 83
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->Fj:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_2
    return-object v1

    :cond_1
    move-object v1, v2

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    const-string v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string v3, "AppOpsDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when retrieving package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    iput-object v2, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->Fj:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private jF()Z
    .locals 14

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->Fj:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return v5

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->Fj:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/AppOpsDetails;->b(Landroid/content/pm/PackageInfo;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 103
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->FD:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 104
    const-string v2, ""

    .line 105
    sget-object v8, Lcom/android/vendorsettings/applications/AppOpsState;->FO:[Lcom/android/vendorsettings/applications/AppOpsState$OpsTemplate;

    array-length v9, v8

    move v6, v5

    :goto_1
    if-ge v6, v9, :cond_5

    aget-object v0, v8, v6

    .line 106
    iget-object v1, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->Fv:Lcom/android/vendorsettings/applications/AppOpsState;

    iget-object v3, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v10}, Lcom/android/vendorsettings/applications/AppOpsState;->a(Lcom/android/vendorsettings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;

    .line 109
    invoke-virtual {v1, v5}, Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;->aC(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v3

    .line 110
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f040010

    iget-object v12, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->FD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 112
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->FD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_2

    .line 116
    :try_start_0
    iget-object v12, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 117
    iget-object v12, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v12, :cond_1

    iget-object v12, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 118
    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 119
    iget-object v12, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v12

    .line 120
    iget v0, v12, Landroid/content/pm/PermissionGroupInfo;->icon:I

    if-eqz v0, :cond_1

    .line 121
    const v0, 0x7f130021

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v13, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v13}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v2

    move-object v2, v0

    .line 128
    :cond_2
    :goto_3
    const v0, 0x7f130022

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->Fv:Lcom/android/vendorsettings/applications/AppOpsState;

    invoke-virtual {v1, v12}, Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;->b(Lcom/android/vendorsettings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v0, 0x7f130023

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v7, v4}, Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;->a(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v0, 0x7f130024

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 133
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v11

    .line 134
    iget-object v3, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;->jL()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;->jL()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    new-instance v3, Lcom/android/vendorsettings/applications/AppOpsDetails$1;

    invoke-direct {v3, p0, v11, v1}, Lcom/android/vendorsettings/applications/AppOpsDetails$1;-><init>(Lcom/android/vendorsettings/applications/AppOpsDetails;ILcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;)V

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_2

    .line 125
    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v2, v0

    goto :goto_3

    :cond_3
    move v3, v5

    .line 134
    goto :goto_4

    .line 105
    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    :cond_5
    move v5, v4

    .line 147
    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    new-instance v0, Lcom/android/vendorsettings/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->Fv:Lcom/android/vendorsettings/applications/AppOpsState;

    .line 163
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    .line 164
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 165
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    .line 167
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/AppOpsDetails;->jE()Ljava/lang/String;

    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/AppOpsDetails;->setHasOptionsMenu(Z)V

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    const v0, 0x7f04000f

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 176
    invoke-static {p2, v1, v1, v2}, Lcom/android/vendorsettings/iC;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 178
    iput-object v1, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    .line 179
    const v0, 0x7f130020

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsDetails;->FD:Landroid/widget/LinearLayout;

    .line 180
    return-object v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 190
    invoke-super {p0}, Lcom/android/vendorsettings/InstrumentedFragment;->onResume()V

    .line 191
    invoke-direct {p0}, Lcom/android/vendorsettings/applications/AppOpsDetails;->jF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0, v1, v1}, Lcom/android/vendorsettings/applications/AppOpsDetails;->c(ZZ)V

    .line 194
    :cond_0
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 185
    const/16 v0, 0xe

    return v0
.end method
