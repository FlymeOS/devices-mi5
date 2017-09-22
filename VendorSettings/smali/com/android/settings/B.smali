.class public Lcom/android/vendorsettings/B;
.super Landroid/widget/ArrayAdapter;
.source "AppListPreference.java"


# instance fields
.field private aX:[Landroid/graphics/drawable/Drawable;

.field private aY:I

.field final synthetic aZ:Lcom/android/vendorsettings/AppListPreference;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/vendorsettings/B;->aZ:Lcom/android/vendorsettings/AppListPreference;

    .line 59
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/B;->aX:[Landroid/graphics/drawable/Drawable;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/B;->aY:I

    .line 60
    iput p6, p0, Lcom/android/vendorsettings/B;->aY:I

    .line 61
    iput-object p5, p0, Lcom/android/vendorsettings/B;->aX:[Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/android/vendorsettings/B;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    const v1, 0x7f040015

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 68
    const v0, 0x7f130029

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/B;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget v0, p0, Lcom/android/vendorsettings/B;->aY:I

    if-ne p1, v0, :cond_0

    .line 71
    const v0, 0x7f13002a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_0
    const v0, 0x7f130028

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    iget-object v1, p0, Lcom/android/vendorsettings/B;->aX:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-object v2
.end method
