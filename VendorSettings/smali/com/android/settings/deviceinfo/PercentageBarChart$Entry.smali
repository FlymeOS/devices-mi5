.class public Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;
.super Ljava/lang/Object;
.source "PercentageBarChart.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final VO:F

.field public final order:I

.field public final paint:Landroid/graphics/Paint;


# direct methods
.method protected constructor <init>(IFLandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->order:I

    .line 54
    iput p2, p0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->VO:F

    .line 55
    iput-object p3, p0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;)I
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->order:I

    iget v1, p1, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->order:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;->a(Lcom/android/vendorsettings/deviceinfo/PercentageBarChart$Entry;)I

    move-result v0

    return v0
.end method
