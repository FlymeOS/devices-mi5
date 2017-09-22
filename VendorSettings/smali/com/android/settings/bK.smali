.class public Lcom/android/settings/bK;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# instance fields
.field private it:Z

.field private iu:Z

.field private final iv:Lcom/android/settings/bL;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1629
    const v0, 0x7f040057

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1623
    iput-boolean v1, p0, Lcom/android/settings/bK;->it:Z

    .line 1624
    iput-boolean v1, p0, Lcom/android/settings/bK;->iu:Z

    .line 1630
    const v0, 0x7f040058

    invoke-virtual {p0, v0}, Lcom/android/settings/bK;->setDropDownViewResource(I)V

    .line 1631
    new-instance v0, Lcom/android/settings/bL;

    invoke-direct {v0, p1}, Lcom/android/settings/bL;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bK;->iv:Lcom/android/settings/bL;

    .line 1632
    return-void
.end method

.method private bC()V
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/settings/bK;->iv:Lcom/android/settings/bL;

    invoke-virtual {p0, v0}, Lcom/android/settings/bK;->remove(Ljava/lang/Object;)V

    .line 1646
    iget-boolean v0, p0, Lcom/android/settings/bK;->it:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bK;->iu:Z

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/android/settings/bK;->iv:Lcom/android/settings/bL;

    invoke-virtual {p0, v0}, Lcom/android/settings/bK;->add(Ljava/lang/Object;)V

    .line 1649
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/bN;)I
    .locals 3

    .prologue
    .line 1656
    if-eqz p1, :cond_2

    .line 1657
    invoke-virtual {p0}, Lcom/android/settings/bK;->getCount()I

    move-result v0

    .line 1658
    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1659
    invoke-virtual {p0, v1}, Lcom/android/settings/bK;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bN;

    .line 1660
    instance-of v2, v0, Lcom/android/settings/bL;

    if-eqz v2, :cond_1

    .line 1658
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1662
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settings/bN;->b(Lcom/android/settings/bN;)I

    move-result v0

    if-ltz v0, :cond_0

    move v0, v1

    .line 1667
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public m(Z)V
    .locals 0

    .prologue
    .line 1635
    iput-boolean p1, p0, Lcom/android/settings/bK;->it:Z

    .line 1636
    invoke-direct {p0}, Lcom/android/settings/bK;->bC()V

    .line 1637
    return-void
.end method

.method public n(Z)V
    .locals 0

    .prologue
    .line 1640
    iput-boolean p1, p0, Lcom/android/settings/bK;->iu:Z

    .line 1641
    invoke-direct {p0}, Lcom/android/settings/bK;->bC()V

    .line 1642
    return-void
.end method
