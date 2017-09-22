.class public Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final CA:Lcom/android/vendorsettings/accessibility/SettingsContentObserver;

.field private Dw:I

.field private R:Landroid/content/ComponentName;

.field private dC:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->CA:Lcom/android/vendorsettings/accessibility/SettingsContentObserver;

    return-void
.end method

.method private a(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .locals 13

    .prologue
    const v12, 0x11030023

    const v11, 0x110200e9

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 257
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 260
    const v1, 0x7f040075

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 263
    const v1, 0x7f1300ed

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 265
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    const v2, 0x7f0c06dd

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    :goto_0
    const v1, 0x7f1300ee

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 276
    const v2, 0x7f0c06db

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const v1, 0x7f1300ef

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 298
    invoke-virtual {v0, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 301
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x110b0009

    invoke-static {v2, v6}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 303
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x110b000a

    invoke-static {v2, v6}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 308
    const v6, 0x7f0c06e2

    invoke-virtual {p0, v6}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x110b000b

    invoke-static {v2, v6}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 313
    const v6, 0x7f0c06e3

    invoke-virtual {p0, v6}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos()Ljava/util/List;

    move-result-object v6

    .line 318
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 321
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    .line 322
    :goto_1
    if-ge v4, v7, :cond_1

    .line 323
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 341
    invoke-virtual {v0, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 344
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x110b0009

    invoke-static {v3, v9}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 346
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x110b000a

    invoke-static {v3, v9}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 351
    iget v9, v2, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    invoke-virtual {p0, v9}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x110b000b

    invoke-static {v3, v9}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 356
    iget v2, v2, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    invoke-virtual {p0, v2}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 271
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 361
    :cond_1
    return-object v5
.end method

.method static synthetic a(Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->iT()V

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private aa(Z)V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/widget/SwitchBar;->bw(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->DA:Lcom/android/vendorsettings/widget/K;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/widget/K;->bw(Z)V

    .line 414
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 415
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->zW:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->b(Ljava/lang/String;Z)V

    .line 416
    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private iS()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 7

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    .line 168
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 169
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 170
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 171
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 172
    iget-object v5, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->R:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->R:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    :goto_1
    return-object v0

    .line 169
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private iT()V
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->R:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->R:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->me:Lcom/android/vendorsettings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/widget/SwitchBar;->bw(Z)V

    .line 253
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->DA:Lcom/android/vendorsettings/widget/K;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/widget/K;->bw(Z)V

    .line 254
    return-void

    .line 247
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iU()Ljava/lang/String;
    .locals 5

    .prologue
    .line 419
    const v0, 0x7f0c06e1

    .line 420
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->dC:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 429
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->iS()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 422
    :sswitch_0
    const v0, 0x7f0c06df

    .line 423
    goto :goto_0

    .line 426
    :sswitch_1
    const v0, 0x7f0c06e0

    goto :goto_0

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public b(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/accessibility/AccessibilityUtils;->ai(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .line 118
    :goto_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 120
    if-eqz p2, :cond_0

    .line 121
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 138
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 144
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const/16 v0, 0x3a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 125
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    sget-object v2, Lcom/android/vendorsettings/accessibility/AccessibilitySettings;->Cw:Ljava/util/Set;

    .line 128
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 129
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 132
    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 149
    if-lez v0, :cond_3

    .line 150
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    if-eqz v2, :cond_4

    :goto_3
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    return-void

    :cond_4
    move v3, v4

    .line 157
    goto :goto_3

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method protected g(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 459
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment;->g(Landroid/os/Bundle;)V

    .line 461
    const-string v0, "settings_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    const-string v1, "settings_component_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 467
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 468
    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->DC:Ljava/lang/CharSequence;

    .line 469
    iput-object v1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->DD:Landroid/content/Intent;

    .line 470
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 474
    :cond_0
    const-string v0, "component_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->R:Landroid/content/ComponentName;

    .line 476
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->R:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->finish()V

    .line 482
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/cloud/a;->aG(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->zW:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 484
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->zW:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 486
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 496
    :cond_2
    :goto_0
    return-void

    .line 490
    :cond_3
    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->R:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->R:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected iN()V
    .locals 2

    .prologue
    .line 435
    invoke-super {p0}, Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment;->iN()V

    .line 436
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->DA:Lcom/android/vendorsettings/widget/K;

    new-instance v1, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;-><init>(Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/widget/K;->a(Lcom/android/vendorsettings/widget/L;)V

    .line 455
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    if-ne p1, v1, :cond_0

    .line 367
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 368
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->aa(Z)V

    .line 372
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->dC:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 374
    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "require_password_to_decrypt"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->aa(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 386
    packed-switch p2, :pswitch_data_0

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 388
    :pswitch_0
    iget v2, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->Dw:I

    if-ne v2, v0, :cond_1

    .line 389
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->iU()Ljava/lang/String;

    move-result-object v1

    .line 391
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/vendorsettings/ConfirmDeviceCredentialActivity;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 392
    invoke-virtual {p0, v1, v0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 408
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->aa(Z)V

    goto :goto_0

    .line 398
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->aa(Z)V

    goto :goto_0

    .line 402
    :pswitch_1
    iget v2, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->Dw:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 403
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->aa(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 402
    goto :goto_1

    .line 386
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->dC:Lcom/android/internal/widget/LockPatternUtils;

    .line 92
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const v9, 0x104000a

    const/high16 v8, 0x1040000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 182
    packed-switch p1, :pswitch_data_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 184
    :pswitch_0
    iput v6, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->Dw:I

    .line 186
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->iS()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 187
    if-nez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v0

    .line 191
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c06da

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    .line 215
    invoke-virtual {v0}, Landroid/app/AlertDialog;->create()V

    .line 216
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 220
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->Dw:I

    .line 221
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->iS()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_0

    .line 225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c06e4

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c06e5

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->CA:Lcom/android/vendorsettings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/accessibility/SettingsContentObserver;->b(Landroid/content/ContentResolver;)V

    .line 104
    invoke-super {p0}, Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->CA:Lcom/android/vendorsettings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/accessibility/SettingsContentObserver;->a(Landroid/content/ContentResolver;)V

    .line 97
    invoke-direct {p0}, Lcom/android/vendorsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->iT()V

    .line 98
    invoke-super {p0}, Lcom/android/vendorsettings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 99
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x4

    return v0
.end method
