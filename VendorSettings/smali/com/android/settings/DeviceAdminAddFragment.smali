.class public Lcom/android/vendorsettings/DeviceAdminAddFragment;
.super Lcom/android/vendorsettings/BaseFragment;
.source "DeviceAdminAddFragment.java"


# instance fields
.field dY:Landroid/widget/Button;

.field ds:Landroid/app/admin/DevicePolicyManager;

.field kH:Landroid/app/admin/DeviceAdminInfo;

.field kI:Ljava/lang/CharSequence;

.field kK:Landroid/widget/ImageView;

.field kL:Landroid/widget/TextView;

.field kM:Landroid/widget/TextView;

.field kN:Landroid/widget/TextView;

.field kP:Landroid/widget/ImageView;

.field kQ:Z

.field kR:Landroid/widget/TextView;

.field kS:Landroid/view/ViewGroup;

.field kT:Landroid/widget/Button;

.field kU:Z

.field kV:Z

.field final ld:Ljava/util/ArrayList;

.field final le:Ljava/util/ArrayList;

.field private lf:Ljava/lang/CharSequence;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/vendorsettings/BaseFragment;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kQ:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->ld:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->le:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/DeviceAdminAddFragment;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->lf:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/DeviceAdminAddFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->lf:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static a(Ljava/util/ArrayList;I)V
    .locals 3

    .prologue
    .line 290
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 291
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 292
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 180
    const v0, 0x7f040064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 181
    return-object v0
.end method

.method c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 354
    check-cast p1, Landroid/widget/TextView;

    .line 356
    iget-boolean v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kQ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kQ:Z

    .line 357
    iget-boolean v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kQ:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 358
    iget-boolean v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kQ:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->dq()I

    move-result v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 360
    iget-object v1, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kP:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kQ:Z

    if-eqz v0, :cond_3

    const v0, 0x110200e4

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 357
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 358
    :cond_2
    const/16 v0, 0xf

    goto :goto_2

    .line 360
    :cond_3
    const v0, 0x110200e5

    goto :goto_3
.end method

.method dp()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kK:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kL:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kM:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kM:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kI:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kN:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kI:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kN:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    :goto_1
    iget-boolean v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kV:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->ds:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->le:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 318
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 319
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 320
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v5, ""

    invoke-static {v4, v0, v5, v6}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v0

    .line 322
    iget-object v4, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->le:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v4, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kS:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 318
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 305
    :catch_0
    move-exception v0

    .line 306
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kM:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kN:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kP:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->le:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->a(Ljava/util/ArrayList;I)V

    .line 327
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->ld:Ljava/util/ArrayList;

    invoke-static {v0, v7}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->a(Ljava/util/ArrayList;I)V

    .line 328
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kR:Landroid/widget/TextView;

    const v1, 0x7f0c081d

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kT:Landroid/widget/Button;

    const v1, 0x7f0c0812

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iput-boolean v2, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kU:Z

    .line 350
    :goto_3
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->ld:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 335
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 336
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 337
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v4, v5, v0, v6}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v0

    .line 339
    iget-object v4, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->ld:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v4, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kS:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 335
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 343
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->ld:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->a(Ljava/util/ArrayList;I)V

    .line 344
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->le:Ljava/util/ArrayList;

    invoke-static {v0, v7}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->a(Ljava/util/ArrayList;I)V

    .line 345
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kR:Landroid/widget/TextView;

    const v1, 0x7f0c081c

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kT:Landroid/widget/Button;

    const v1, 0x7f0c081a

    invoke-virtual {p0, v1}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iput-boolean v6, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kU:Z

    goto :goto_3
.end method

.method dq()I
    .locals 2

    .prologue
    .line 369
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 77
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->mHandler:Landroid/os/Handler;

    .line 79
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->ds:Landroid/app/admin/DevicePolicyManager;

    .line 82
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/vendorsettings/MiuiSettings;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    move-object v5, v0

    .line 89
    :goto_0
    if-nez v5, :cond_1

    .line 90
    const-string v0, "DeviceAdminAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No component specified in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->finish()V

    .line 175
    :goto_1
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    move-object v5, v0

    goto :goto_0

    .line 97
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 107
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->ds:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v4, 0x8000

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 111
    if-nez v7, :cond_2

    move v1, v2

    :goto_2
    move v4, v2

    .line 113
    :goto_3
    if-ge v4, v1, :cond_8

    .line 114
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 115
    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 120
    :try_start_1
    iput-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 121
    new-instance v1, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v3

    .line 131
    :goto_4
    if-nez v0, :cond_4

    .line 132
    const-string v0, "DeviceAdminAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to add invalid device admin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->finish()V

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "DeviceAdminAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve device policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->finish()V

    goto/16 :goto_1

    .line 111
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_2

    .line 123
    :catch_1
    move-exception v1

    .line 124
    const-string v4, "DeviceAdminAdd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 127
    goto :goto_4

    .line 125
    :catch_2
    move-exception v1

    .line 126
    const-string v4, "DeviceAdminAdd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 128
    goto :goto_4

    .line 113
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_3

    .line 138
    :cond_4
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 139
    iput-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 141
    :try_start_2
    new-instance v1, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v1, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 155
    const-string v0, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    iput-boolean v2, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kV:Z

    .line 157
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->ds:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 158
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kH:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    .line 159
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 160
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 161
    iget-object v4, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->ds:Landroid/app/admin/DevicePolicyManager;

    iget v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v4, v5, v0}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 162
    iput-boolean v3, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kV:Z

    .line 166
    :cond_5
    iget-boolean v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kV:Z

    if-nez v0, :cond_7

    .line 168
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->setResult(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->finish()V

    goto/16 :goto_1

    .line 142
    :catch_3
    move-exception v0

    .line 143
    const-string v1, "DeviceAdminAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve device policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->finish()V

    goto/16 :goto_1

    .line 146
    :catch_4
    move-exception v0

    .line 147
    const-string v1, "DeviceAdminAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve device policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->finish()V

    goto/16 :goto_1

    .line 159
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 174
    :cond_7
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kI:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto/16 :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 268
    packed-switch p1, :pswitch_data_0

    .line 284
    invoke-super {p0, p1}, Lcom/android/vendorsettings/BaseFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 270
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    iget-object v1, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->lf:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 273
    const v1, 0x7f0c05b1

    new-instance v2, Lcom/android/vendorsettings/cm;

    invoke-direct {v2, p0}, Lcom/android/vendorsettings/cm;-><init>(Lcom/android/vendorsettings/DeviceAdminAddFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    const v1, 0x7f0c05b2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/vendorsettings/BaseFragment;->onResume()V

    .line 262
    invoke-virtual {p0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->dp()V

    .line 263
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 186
    const v0, 0x7f1300c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kK:Landroid/widget/ImageView;

    .line 187
    const v0, 0x7f1300ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kL:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f1300cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kM:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f1300ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kN:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f1300cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kP:Landroid/widget/ImageView;

    .line 192
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kN:Landroid/widget/TextView;

    new-instance v1, Lcom/android/vendorsettings/cj;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/cj;-><init>(Lcom/android/vendorsettings/DeviceAdminAddFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kN:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/DeviceAdminAddFragment;->c(Landroid/view/View;)V

    .line 201
    const v0, 0x7f1300cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kR:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f1300d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kS:Landroid/view/ViewGroup;

    .line 203
    const v0, 0x7f1300d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->dY:Landroid/widget/Button;

    .line 204
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->dY:Landroid/widget/Button;

    new-instance v1, Lcom/android/vendorsettings/ck;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/ck;-><init>(Lcom/android/vendorsettings/DeviceAdminAddFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v0, 0x7f1300d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kT:Landroid/widget/Button;

    .line 210
    iget-object v0, p0, Lcom/android/vendorsettings/DeviceAdminAddFragment;->kT:Landroid/widget/Button;

    new-instance v1, Lcom/android/vendorsettings/cl;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/cl;-><init>(Lcom/android/vendorsettings/DeviceAdminAddFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 257
    return-void
.end method
