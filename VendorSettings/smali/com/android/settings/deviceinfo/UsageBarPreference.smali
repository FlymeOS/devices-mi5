.class public Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;
.super Landroid/preference/Preference;
.source "UsageBarPreference.java"


# instance fields
.field private XK:Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;

.field private final XL:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->XK:Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;

    .line 36
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->XL:Ljava/util/List;

    .line 53
    const v0, 0x7f0400e5

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public b(IFI)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->XL:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->a(IFI)Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->XL:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 59
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->XL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->XK:Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->XK:Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;

    invoke-virtual {v0}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->invalidate()V

    .line 73
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 65
    const v0, 0x7f1301c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->XK:Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;

    .line 66
    iget-object v0, p0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->XK:Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/UsageBarPreference;->XL:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart;->a(Ljava/util/Collection;)V

    .line 67
    return-void
.end method
