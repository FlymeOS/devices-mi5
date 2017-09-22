.class public Lcom/android/settings/DropDownPreference;
.super Landroid/preference/Preference;
.source "DropDownPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSelectedPosition:I

.field private final mk:Landroid/widget/ArrayAdapter;

.field private final ml:Landroid/widget/Spinner;

.field private final mm:Ljava/util/ArrayList;

.field private mn:Lcom/android/settings/cO;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/DropDownPreference;->mm:Ljava/util/ArrayList;

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/DropDownPreference;->mSelectedPosition:I

    .line 47
    iput-object p1, p0, Lcom/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    .line 48
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    sget v3, Lmiui/R$layout;->simple_spinner_dropdown_item:I

    invoke-direct {v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/DropDownPreference;->mk:Landroid/widget/ArrayAdapter;

    .line 51
    new-instance v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    .line 53
    iget-object v1, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 54
    iget-object v1, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/DropDownPreference;->mk:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 55
    iget-object v1, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/settings/cM;

    invoke-direct {v2, p0}, Lcom/android/settings/cM;-><init>(Lcom/android/settings/DropDownPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/settings/DropDownPreference;->setPersistent(Z)V

    .line 67
    new-instance v1, Lcom/android/settings/cN;

    invoke-direct {v1, p0}, Lcom/android/settings/cN;-><init>(Lcom/android/settings/DropDownPreference;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/DropDownPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    sget-object v1, Lcom/android/settings/gt;->wx:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 78
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 79
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 80
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 81
    aget-object v3, v2, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/DropDownPreference;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/DropDownPreference;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/DropDownPreference;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public a(Lcom/android/settings/cO;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/DropDownPreference;->mn:Lcom/android/settings/cO;

    .line 92
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mk:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mm:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public dJ()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mk:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    return-void
.end method

.method public g(IZ)V
    .locals 2

    .prologue
    .line 99
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/settings/DropDownPreference;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mm:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 103
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mn:Lcom/android/settings/cO;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mn:Lcom/android/settings/cO;

    invoke-interface {v0, p1, v1}, Lcom/android/settings/cO;->b(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/android/settings/DropDownPreference;->mSelectedPosition:I

    .line 108
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mk:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 110
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/DropDownPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    .line 109
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mk:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public o(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->mm:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 115
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/DropDownPreference;->setSelectedItem(I)V

    .line 118
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 146
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 148
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    iget-object v1, p0, Lcom/android/settings/DropDownPreference;->ml:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSelectedItem(I)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/DropDownPreference;->g(IZ)V

    .line 96
    return-void
.end method
