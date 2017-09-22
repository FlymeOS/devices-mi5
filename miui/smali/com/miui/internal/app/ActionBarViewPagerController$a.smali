.class Lcom/miui/internal/app/ActionBarViewPagerController$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private bI:I

.field final synthetic bS:Lcom/miui/internal/app/ActionBarViewPagerController;

.field private bT:Z


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$a;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(IZ)V
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$a;->bI:I

    .line 227
    iput-boolean p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$a;->bT:Z

    .line 228
    return-void
.end method

.method public setValue(F)V
    .locals 6

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$a;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$a;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 233
    instance-of v1, v0, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 234
    iget v3, p0, Lcom/miui/internal/app/ActionBarViewPagerController$a;->bI:I

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, p1

    iget-boolean v5, p0, Lcom/miui/internal/app/ActionBarViewPagerController$a;->bT:Z

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$a;->bT:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v3, v4, v5, v1}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 238
    :cond_2
    return-void
.end method
