.class Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securityspace/XSpaceResolverActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolverActivityRunner"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAimPackageName:Ljava/lang/String;

.field private mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOriginalIntent:Landroid/content/Intent;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alertParams"    # Lcom/android/internal/app/AlertController$AlertParams;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;

    invoke-direct {v0, p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$2;-><init>(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)V

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 50
    iput-object p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    .line 51
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIntent:Landroid/content/Intent;

    .line 53
    iput-object p3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    .prologue
    .line 33
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->forward(I)V

    return-void
.end method

.method private forward(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lmiui/securityspace/CrossUserUtilsCompat;->startActivityAsCaller(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 96
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 97
    return-void
.end method

.method private getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/securityspace/CrossUserUtils;->getOriginalAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private loadItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "appId"    # I
    .param p2, "iconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 100
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mRootView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 101
    .local v0, "app":Landroid/widget/LinearLayout;
    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 102
    .local v1, "icon":Landroid/widget/ImageView;
    const v3, 0x1020014

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    .local v2, "text":Landroid/widget/TextView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinLines(I)V

    .line 105
    const v3, 0x110b002b

    if-ne p1, v3, :cond_0

    .line 106
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 109
    :cond_0
    const v3, 0x1020015

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method


# virtual methods
.method public getAppLabel()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 122
    .local v2, "label":Ljava/lang/CharSequence;
    :try_start_0
    iget-object v6, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 123
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 124
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 125
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 128
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 137
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .local v3, "label":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 133
    .end local v3    # "label":Ljava/lang/Object;
    .restart local v2    # "label":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 136
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    move-object v3, v2

    .line 137
    .restart local v3    # "label":Ljava/lang/Object;
    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 58
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 59
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    const v4, 0x110700cf

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 61
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x11030011

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mRootView:Landroid/view/View;

    .line 62
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mRootView:Landroid/view/View;

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 63
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 64
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v3, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;

    invoke-direct {v3, p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;-><init>(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)V

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.xspace_resolver_activity_original_intent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.xspace_resolver_activity_aim_package"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->mAimPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 76
    invoke-direct {p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    .local v0, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 78
    .local v1, "label":Ljava/lang/CharSequence;
    const v2, 0x110b002a

    invoke-direct {p0, v2, v0, v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->loadItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 79
    const v2, 0x110b002b

    invoke-direct {p0, v2, v0, v1}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->loadItem(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 81
    .end local v0    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method
