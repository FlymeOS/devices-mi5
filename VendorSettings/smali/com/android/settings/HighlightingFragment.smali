.class public abstract Lcom/android/vendorsettings/HighlightingFragment;
.super Lcom/android/vendorsettings/InstrumentedFragment;
.source "HighlightingFragment.java"


# instance fields
.field private nK:Ljava/lang/String;

.field private nL:Z

.field private nM:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/vendorsettings/InstrumentedFragment;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/HighlightingFragment;->nL:Z

    return-void
.end method

.method private G(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/vendorsettings/HighlightingFragment;->el()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/android/vendorsettings/HighlightingFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/vendorsettings/HighlightingFragment;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/vendorsettings/HighlightingFragment;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/vendorsettings/dp;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/vendorsettings/dp;-><init>(Lcom/android/vendorsettings/HighlightingFragment;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v0, 0x190

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/HighlightingFragment;->nL:Z

    .line 98
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/HighlightingFragment;->b(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-object p1

    .line 104
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 105
    check-cast p1, Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 107
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 108
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0, p2}, Lcom/android/vendorsettings/HighlightingFragment;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 111
    goto :goto_0

    .line 107
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 115
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 119
    const/high16 v0, 0x7f130000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private el()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/HighlightingFragment;->nM:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/vendorsettings/HighlightingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020247

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/HighlightingFragment;->nM:Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/HighlightingFragment;->nM:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public ek()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/vendorsettings/HighlightingFragment;->nL:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/HighlightingFragment;->nK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/vendorsettings/HighlightingFragment;->nK:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/HighlightingFragment;->G(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/vendorsettings/HighlightingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/HighlightingFragment;->nK:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/android/vendorsettings/HighlightingFragment;->ek()V

    .line 62
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    const-string v0, "android:view_highlighted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/HighlightingFragment;->nL:Z

    .line 44
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/vendorsettings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 50
    const-string v0, "android:view_highlighted"

    iget-boolean v1, p0, Lcom/android/vendorsettings/HighlightingFragment;->nL:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    return-void
.end method
