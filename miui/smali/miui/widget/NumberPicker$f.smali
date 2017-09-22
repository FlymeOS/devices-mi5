.class Lmiui/widget/NumberPicker$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# static fields
.field public static final VF:I = 0x1

.field public static final VH:I = 0x2


# instance fields
.field private final VJ:I

.field private final VK:I

.field private VL:I

.field private VM:I

.field final synthetic Vu:Lmiui/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiui/widget/NumberPicker;)V
    .locals 1

    .prologue
    .line 1923
    iput-object p1, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1927
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker$f;->VJ:I

    .line 1928
    const/4 v0, 0x2

    iput v0, p0, Lmiui/widget/NumberPicker$f;->VK:I

    return-void
.end method


# virtual methods
.method public ap(I)V
    .locals 4

    .prologue
    .line 1948
    invoke-virtual {p0}, Lmiui/widget/NumberPicker$f;->cancel()V

    .line 1949
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker$f;->VM:I

    .line 1950
    iput p1, p0, Lmiui/widget/NumberPicker$f;->VL:I

    .line 1951
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1952
    return-void
.end method

.method public aq(I)V
    .locals 1

    .prologue
    .line 1955
    invoke-virtual {p0}, Lmiui/widget/NumberPicker$f;->cancel()V

    .line 1956
    const/4 v0, 0x2

    iput v0, p0, Lmiui/widget/NumberPicker$f;->VM:I

    .line 1957
    iput p1, p0, Lmiui/widget/NumberPicker$f;->VL:I

    .line 1958
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p0}, Lmiui/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1959
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1934
    iput v4, p0, Lmiui/widget/NumberPicker$f;->VM:I

    .line 1935
    iput v4, p0, Lmiui/widget/NumberPicker$f;->VL:I

    .line 1936
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v0, p0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1937
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1938
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0, v4}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;Z)Z

    .line 1939
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 1941
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->f(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1942
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0, v4}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;Z)Z

    .line 1943
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    .line 1945
    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1963
    iget v0, p0, Lmiui/widget/NumberPicker$f;->VM:I

    packed-switch v0, :pswitch_data_0

    .line 1997
    :goto_0
    return-void

    .line 1965
    :pswitch_0
    iget v0, p0, Lmiui/widget/NumberPicker$f;->VL:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1967
    :pswitch_1
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0, v5}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;Z)Z

    .line 1968
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1971
    :pswitch_2
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0, v5}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;Z)Z

    .line 1972
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1977
    :pswitch_3
    iget v0, p0, Lmiui/widget/NumberPicker$f;->VL:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1979
    :pswitch_4
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->d(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1980
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1983
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0, v5}, Lmiui/widget/NumberPicker;->a(Lmiui/widget/NumberPicker;I)Z

    .line 1984
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v1}, Lmiui/widget/NumberPicker;->e(Lmiui/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v2}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v3}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 1987
    :pswitch_5
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0}, Lmiui/widget/NumberPicker;->f(Lmiui/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1988
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1991
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v0, v5}, Lmiui/widget/NumberPicker;->b(Lmiui/widget/NumberPicker;I)Z

    .line 1992
    iget-object v0, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-virtual {v1}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker$f;->Vu:Lmiui/widget/NumberPicker;

    invoke-static {v2}, Lmiui/widget/NumberPicker;->g(Lmiui/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lmiui/widget/NumberPicker;->invalidate(IIII)V

    goto/16 :goto_0

    .line 1963
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1965
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1977
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
