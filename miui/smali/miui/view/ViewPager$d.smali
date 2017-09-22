.class Lmiui/view/ViewPager$d;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic Mk:Lmiui/view/ViewPager;


# direct methods
.method private constructor <init>(Lmiui/view/ViewPager;)V
    .locals 0

    .prologue
    .line 2606
    iput-object p1, p0, Lmiui/view/ViewPager$d;->Mk:Lmiui/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/ViewPager;Lmiui/view/ViewPager$1;)V
    .locals 0

    .prologue
    .line 2606
    invoke-direct {p0, p1}, Lmiui/view/ViewPager$d;-><init>(Lmiui/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2609
    iget-object v0, p0, Lmiui/view/ViewPager$d;->Mk:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->dw()V

    .line 2610
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2613
    iget-object v0, p0, Lmiui/view/ViewPager$d;->Mk:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->dw()V

    .line 2614
    return-void
.end method
