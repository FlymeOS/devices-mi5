.class Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;
.super Landroid/preference/SwitchPreference;
.source "AppRestrictionsFragment.java"


# instance fields
.field private atq:Z

.field private atr:Landroid/view/View$OnClickListener;

.field private ats:Ljava/util/ArrayList;

.field private att:Z

.field private atu:Z

.field private mChildren:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    .line 162
    const v0, 0x7f0400cf

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setLayoutResource(I)V

    .line 163
    iput-object p2, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->atr:Landroid/view/View$OnClickListener;

    .line 164
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->bg(Z)V

    return-void
.end method

.method private bg(Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->atq:Z

    .line 168
    return-void
.end method

.method static synthetic d(Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->atr:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic e(Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->ats:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->atq:Z

    return v0
.end method

.method static synthetic g(Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method bh(Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->atu:Z

    .line 176
    return-void
.end method

.method bi(Z)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->att:Z

    .line 192
    return-void
.end method

.method f(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->ats:Ljava/util/ArrayList;

    .line 172
    return-void
.end method

.method isImmutable()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->atu:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 200
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 202
    const v0, 0x7f1301a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 203
    iget-boolean v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->atq:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 204
    const v0, 0x7f1301a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->atq:Z

    if-eqz v5, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->atr:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-virtual {v4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    const v0, 0x7f1301a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    iget-object v2, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->atr:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 214
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 215
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 217
    invoke-virtual {p0}, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 218
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setClickable(Z)V

    .line 220
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 221
    new-instance v1, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;

    invoke-direct {v1, p0, v0}, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;-><init>(Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;Landroid/widget/Switch;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 203
    goto :goto_0

    :cond_4
    move v2, v1

    .line 214
    goto :goto_1
.end method

.method vc()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->ats:Ljava/util/ArrayList;

    return-object v0
.end method

.method vd()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/vendorsettings/users/AppRestrictionsFragment$AppRestrictionsPreference;->att:Z

    return v0
.end method
