.class public Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;
.super Lmiui/preference/RadioButtonPreference;
.source "RadioButtonWithArrow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aaP:Landroid/view/View$OnClickListener;

.field private aaQ:Landroid/widget/ImageView;

.field private aaR:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaR:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaR:I

    .line 20
    return-void
.end method


# virtual methods
.method public b(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaP:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method

.method public bY(I)V
    .locals 1

    .prologue
    .line 49
    iput p1, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaR:I

    .line 50
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaQ:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaQ:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 35
    const v0, 0x7f1300dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaQ:Landroid/widget/ImageView;

    .line 36
    iget v0, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaR:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaQ:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaQ:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaR:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaP:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->aaP:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f04006b

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/dndmode/RadioButtonWithArrow;->setWidgetLayoutResource(I)V

    .line 29
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
