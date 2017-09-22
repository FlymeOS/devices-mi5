.class public Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;


# instance fields
.field private CS:Landroid/view/accessibility/CaptioningManager;

.field private CT:Lcom/android/internal/widget/SubtitleView;

.field private CU:Landroid/view/View;

.field private CV:Landroid/view/View;

.field private CW:Lcom/android/settings/widget/ToggleSwitch;

.field private CX:Lcom/android/settings/accessibility/LocalePreference;

.field private CY:Landroid/preference/ListPreference;

.field private CZ:Lcom/android/settings/accessibility/PresetPreference;

.field private Da:Landroid/preference/ListPreference;

.field private Db:Lcom/android/settings/accessibility/ColorPreference;

.field private Dc:Lcom/android/settings/accessibility/ColorPreference;

.field private Dd:Lcom/android/settings/accessibility/EdgeTypePreference;

.field private De:Lcom/android/settings/accessibility/ColorPreference;

.field private Df:Lcom/android/settings/accessibility/ColorPreference;

.field private Dg:Lcom/android/settings/accessibility/ColorPreference;

.field private Dh:Lcom/android/settings/accessibility/ColorPreference;

.field private Di:Lcom/android/settings/accessibility/ColorPreference;

.field private Dj:Landroid/preference/PreferenceCategory;

.field private Dk:Z

.field private me:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private Z(Z)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    move v1, v0

    .line 284
    :goto_0
    if-ge v1, v3, :cond_1

    .line 285
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 286
    invoke-virtual {v4}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 287
    invoke-virtual {v4, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 284
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CT:Lcom/android/internal/widget/SubtitleView;

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CT:Lcom/android/internal/widget/SubtitleView;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 293
    :cond_2
    return-void

    .line 291
    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method

.method private a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I
    .locals 3

    .prologue
    .line 441
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v0

    .line 442
    invoke-virtual {p2}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v1

    .line 445
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    const v0, 0xffff00

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 455
    :goto_0
    return v0

    .line 448
    :cond_0
    if-nez v0, :cond_1

    .line 450
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    goto :goto_0

    .line 453
    :cond_1
    const v2, 0xffffff

    and-int/2addr v0, v2

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 5

    .prologue
    const v4, 0x7f0c06cb

    .line 219
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 221
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 223
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    .line 224
    if-eqz p2, :cond_0

    .line 226
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    .line 228
    const v3, 0x3d5a511a    # 0.0533f

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 235
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_1

    .line 237
    invoke-static {v0, v1, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->a(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 239
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_1
    return-void

    .line 230
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 232
    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->iM()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/accessibility/CaptionPropertiesFragment;Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Z(Z)V

    return-void
.end method

.method private a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V
    .locals 4

    .prologue
    const v2, 0xffffff

    const/high16 v3, -0x1000000

    .line 421
    invoke-static {p3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    and-int/lit16 v0, p3, 0xff

    shl-int/lit8 v0, v0, 0x18

    move v1, v2

    .line 436
    :goto_0
    or-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 437
    invoke-virtual {p1, v1}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 438
    return-void

    .line 425
    :cond_0
    ushr-int/lit8 v0, p3, 0x18

    if-nez v0, :cond_1

    .line 427
    const/4 v1, 0x0

    .line 428
    and-int/lit16 v0, p3, 0xff

    shl-int/lit8 v0, v0, 0x18

    goto :goto_0

    .line 431
    :cond_1
    or-int v1, p3, v3

    .line 432
    and-int v0, p3, v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->me:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CT:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method private iF()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 307
    const-string v0, "captioning_locale"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/LocalePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CX:Lcom/android/settings/accessibility/LocalePreference;

    .line 308
    const-string v0, "captioning_font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CY:Landroid/preference/ListPreference;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 311
    const v0, 0x7f0a0044

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 312
    const v0, 0x7f0a0043

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 313
    const-string v0, "captioning_preset"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/PresetPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CZ:Lcom/android/settings/accessibility/PresetPreference;

    .line 314
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CZ:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/PresetPreference;->a([I)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CZ:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/PresetPreference;->a([Ljava/lang/CharSequence;)V

    .line 317
    const-string v0, "custom"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dj:Landroid/preference/PreferenceCategory;

    .line 318
    iput-boolean v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dk:Z

    .line 320
    const v0, 0x7f0a0040

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 321
    const v0, 0x7f0a003f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 322
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dj:Landroid/preference/PreferenceCategory;

    const-string v4, "captioning_foreground_color"

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Db:Lcom/android/settings/accessibility/ColorPreference;

    .line 323
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Db:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Db:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 326
    const v0, 0x7f0a0042

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 327
    const v0, 0x7f0a0041

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 329
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dj:Landroid/preference/PreferenceCategory;

    const-string v5, "captioning_foreground_opacity"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dc:Lcom/android/settings/accessibility/ColorPreference;

    .line 330
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dc:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dc:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dj:Landroid/preference/PreferenceCategory;

    const-string v5, "captioning_edge_color"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->De:Lcom/android/settings/accessibility/ColorPreference;

    .line 334
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->De:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->De:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 338
    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    .line 339
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 340
    array-length v0, v2

    invoke-static {v2, v7, v5, v8, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 341
    array-length v0, v3

    invoke-static {v3, v7, v6, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    aput v7, v5, v7

    .line 343
    const v0, 0x7f0c06cf

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 344
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dj:Landroid/preference/PreferenceCategory;

    const-string v2, "captioning_background_color"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Df:Lcom/android/settings/accessibility/ColorPreference;

    .line 345
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Df:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v6}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Df:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dj:Landroid/preference/PreferenceCategory;

    const-string v2, "captioning_background_opacity"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dg:Lcom/android/settings/accessibility/ColorPreference;

    .line 349
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dg:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dg:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dj:Landroid/preference/PreferenceCategory;

    const-string v2, "captioning_window_color"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dh:Lcom/android/settings/accessibility/ColorPreference;

    .line 353
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dh:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v6}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dh:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dj:Landroid/preference/PreferenceCategory;

    const-string v2, "captioning_window_opacity"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Di:Lcom/android/settings/accessibility/ColorPreference;

    .line 357
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Di:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ColorPreference;->a([Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Di:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/accessibility/ColorPreference;->a([I)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dj:Landroid/preference/PreferenceCategory;

    const-string v1, "captioning_edge_type"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/EdgeTypePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dd:Lcom/android/settings/accessibility/EdgeTypePreference;

    .line 361
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dj:Landroid/preference/PreferenceCategory;

    const-string v1, "captioning_typeface"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Da:Landroid/preference/ListPreference;

    .line 362
    return-void
.end method

.method private iG()V
    .locals 5

    .prologue
    const v1, 0xffffff

    .line 381
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CS:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v0

    .line 382
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CZ:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/accessibility/PresetPreference;->setValue(I)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CS:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    .line 385
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    .line 389
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dd:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget v3, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/EdgeTypePreference;->setValue(I)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->De:Lcom/android/settings/accessibility/ColorPreference;

    iget v3, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 392
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 394
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Db:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dc:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v3, v4, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 396
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 398
    :goto_1
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Df:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dg:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v3, v4, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 400
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dh:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Di:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 404
    iget-object v0, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 405
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Da:Landroid/preference/ListPreference;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CS:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CX:Lcom/android/settings/accessibility/LocalePreference;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    .line 409
    return-void

    :cond_3
    move v0, v1

    .line 392
    goto :goto_0

    :cond_4
    move v0, v1

    .line 396
    goto :goto_1
.end method

.method private iM()V
    .locals 6

    .prologue
    const v5, 0x7f0c06ca

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 188
    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CT:Lcom/android/internal/widget/SubtitleView;

    .line 194
    if-eqz v1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CS:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v2

    .line 196
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CS:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CV:Landroid/view/View;

    invoke-static {v3, v1, v4, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 198
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CS:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_2

    .line 200
    invoke-static {v0, v2, v5}, Lcom/android/settings/accessibility/AccessibilityUtils;->a(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 202
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CS:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CU:Landroid/view/View;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {v1, v5}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_1

    .line 211
    :cond_3
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 212
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CU:Landroid/view/View;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private iO()V
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->iN()V

    .line 298
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 299
    return-void
.end method

.method private iP()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 303
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CW:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->a(Lcom/android/settings/widget/M;)V

    .line 304
    return-void
.end method

.method private iQ()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CZ:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/PresetPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Db:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dc:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->De:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Df:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dg:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dh:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Di:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dd:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->a(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Da:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CY:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CX:Lcom/android/settings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 378
    return-void
.end method

.method private iR()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 459
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CZ:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 460
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dk:Z

    if-eqz v3, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dj:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 462
    iput-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dk:Z

    .line 467
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 459
    goto :goto_0

    .line 463
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dk:Z

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dj:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 465
    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dk:Z

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 128
    const v0, 0x7f040030

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 132
    instance-of v0, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 136
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 137
    const v0, 0x7f13006b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 140
    return-object v1
.end method

.method public a(Lcom/android/settings/accessibility/ListDialogPreference;I)V
    .locals 3

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Db:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dc:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_2

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Db:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dc:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    .line 474
    const-string v2, "accessibility_captioning_foreground_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 493
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->iM()V

    .line 494
    return-void

    .line 476
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Df:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dg:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_4

    .line 477
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Df:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dg:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    .line 478
    const-string v2, "accessibility_captioning_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 480
    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dh:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Di:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_6

    .line 481
    :cond_5
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dh:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Di:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    .line 482
    const-string v2, "accessibility_captioning_window_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 484
    :cond_6
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->De:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_7

    .line 485
    const-string v1, "accessibility_captioning_edge_color"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 486
    :cond_7
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CZ:Lcom/android/settings/accessibility/PresetPreference;

    if-ne v1, p1, :cond_8

    .line 487
    const-string v1, "accessibility_captioning_preset"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 488
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->iR()V

    goto :goto_0

    .line 489
    :cond_8
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Dd:Lcom/android/settings/accessibility/EdgeTypePreference;

    if-ne v1, p1, :cond_1

    .line 490
    const-string v1, "accessibility_captioning_edge_type"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected iN()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CW:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v3, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ToggleSwitch;->a(Lcom/android/settings/widget/M;)V

    .line 260
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 261
    const v3, 0x7f0c0ece

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 262
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_captioning_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 266
    new-instance v0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$3;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 276
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Z(Z)V

    .line 278
    return-void

    :cond_0
    move v0, v1

    .line 264
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CS:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    .line 168
    invoke-virtual {v0}, Lcom/android/settings/hn;->hD()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->me:Lcom/android/settings/widget/SwitchBar;

    .line 169
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->bw(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->me:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->wO()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CW:Lcom/android/settings/widget/ToggleSwitch;

    .line 175
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->iM()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->iO()V

    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CS:Landroid/view/accessibility/CaptioningManager;

    .line 116
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->iF()V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->iG()V

    .line 119
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->iR()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->iQ()V

    .line 121
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->iP()V

    .line 184
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->Da:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 500
    const-string v1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 511
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->iM()V

    .line 512
    const/4 v0, 0x1

    return v0

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CY:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_2

    .line 503
    const-string v1, "accessibility_captioning_font_scale"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 506
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CX:Lcom/android/settings/accessibility/LocalePreference;

    if-ne v1, p1, :cond_0

    .line 507
    const-string v1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CS:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    .line 148
    const v0, 0x7f13006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CT:Lcom/android/internal/widget/SubtitleView;

    .line 149
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CT:Lcom/android/internal/widget/SubtitleView;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 151
    const v0, 0x7f130069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CU:Landroid/view/View;

    .line 152
    const v0, 0x7f130068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CV:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->CV:Landroid/view/View;

    new-instance v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 160
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x3

    return v0
.end method
