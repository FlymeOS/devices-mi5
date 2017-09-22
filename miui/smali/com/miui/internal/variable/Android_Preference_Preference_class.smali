.class public abstract Lcom/miui/internal/variable/Android_Preference_Preference_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy",
        "<",
        "Landroid/preference/Preference;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field protected static final mCanRecycleLayout:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const-class v0, Landroid/preference/Preference;

    const-string v1, "mCanRecycleLayout"

    const-string v2, "Z"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/Android_Preference_Preference_class;->mCanRecycleLayout:Lmiui/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 66
    return-void
.end method

.method private a(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 148
    const v0, 0x1020001

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    instance-of v1, v0, Lmiui/widget/SlidingButton;

    if-eqz v1, :cond_0

    .line 150
    check-cast v0, Lmiui/widget/SlidingButton;

    .line 151
    new-instance v1, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class$1;-><init>(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/view/View;Landroid/preference/CheckBoxPreference;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    :cond_0
    return-void
.end method

.method private a(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 170
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v3

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    move v2, v3

    .line 174
    :goto_1
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 175
    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 176
    if-ne v0, p2, :cond_2

    .line 177
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 178
    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int v3, v2, v0

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move-object v0, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v3, v6

    .line 181
    goto :goto_0

    .line 184
    :cond_2
    instance-of v1, v0, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    .line 185
    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0, p2, p3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v6

    .line 186
    goto :goto_0

    .line 174
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/miui/internal/variable/Android_Preference_Preference_class;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/view/View;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->attachConstructor(Ljava/lang/String;)J

    .line 73
    const-string v0, "onBindView"

    const-string v1, "(Landroid/view/View;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 74
    return-void
.end method

.method protected abstract getPreferenceScreen(Landroid/preference/Preference;)Landroid/preference/PreferenceScreen;
.end method

.method protected handle()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 78
    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->handle_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->handleOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    .line 80
    return-void
.end method

.method protected handleOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 83
    .line 84
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 86
    instance-of v0, p3, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_7

    .line 87
    invoke-virtual {p3}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    .line 88
    invoke-virtual {p3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    if-nez v0, :cond_4

    .line 90
    sget v0, Lcom/miui/internal/R$drawable;->preference_category_background_first_no_title:I

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    :goto_0
    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 102
    invoke-virtual {p4}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    :goto_1
    instance-of v0, p3, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 109
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->a(Landroid/preference/CheckBoxPreference;Landroid/view/View;)V

    .line 112
    :cond_0
    sget v0, Lcom/miui/internal/R$id;->arrow_right:I

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {p3}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$dimen;->preference_horizontal_extra_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 123
    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 125
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 126
    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 129
    :cond_2
    instance-of v2, p3, Lmiui/preference/RadioButtonPreference;

    if-eqz v2, :cond_3

    .line 130
    invoke-virtual {p3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$dimen;->preference_item_padding_side_zero:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 132
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 134
    :cond_3
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    .line 135
    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    .line 137
    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p4, v2, v1, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 139
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->originalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V

    .line 140
    return-void

    .line 92
    :cond_4
    sget v0, Lcom/miui/internal/R$drawable;->preference_category_background_no_title:I

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 95
    :cond_5
    if-nez v0, :cond_6

    .line 96
    sget v0, Lcom/miui/internal/R$drawable;->preference_category_background_first:I

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 98
    :cond_6
    sget v0, Lcom/miui/internal/R$drawable;->preference_category_background:I

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 104
    :cond_7
    invoke-virtual {p3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$attr;->preferenceBackground:I

    invoke-static {v0, v2}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    invoke-virtual {p4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 114
    :cond_8
    const/16 v0, 0x8

    goto :goto_2
.end method

.method protected handle_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 194
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->original_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    sget-object v0, Lcom/miui/internal/variable/Android_Preference_Preference_class;->mCanRecycleLayout:Lmiui/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Z)V

    .line 196
    return-void
.end method

.method protected originalOnBindView(JLandroid/preference/Preference;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.Android_Preference_Preference_class.originalOnBindView(long, Preference, View)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected original_init_(JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.Android_Preference_Preference_class.original_init_(long, View, Context, AttributeSet, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
