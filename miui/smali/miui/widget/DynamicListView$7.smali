.class Lmiui/widget/DynamicListView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rd:Lmiui/widget/DynamicListView;

.field private Ri:I

.field private Rj:I

.field private Rk:I

.field private Rl:I

.field private Rm:I


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 201
    iput-object p1, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput v0, p0, Lmiui/widget/DynamicListView$7;->Ri:I

    .line 205
    iput v0, p0, Lmiui/widget/DynamicListView$7;->Rj:I

    return-void
.end method

.method private ep()V
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lmiui/widget/DynamicListView$7;->Rl:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/widget/DynamicListView$7;->Rm:I

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->f(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->c(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->g(Lmiui/widget/DynamicListView;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->h(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->i(Lmiui/widget/DynamicListView;)V

    goto :goto_0
.end method


# virtual methods
.method public eq()V
    .locals 4

    .prologue
    .line 270
    iget v0, p0, Lmiui/widget/DynamicListView$7;->Rk:I

    iget v1, p0, Lmiui/widget/DynamicListView$7;->Ri:I

    if-eq v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->f(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v1}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lmiui/widget/DynamicListView;->d(Lmiui/widget/DynamicListView;J)V

    .line 273
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->j(Lmiui/widget/DynamicListView;)V

    .line 276
    :cond_0
    return-void
.end method

.method public er()V
    .locals 4

    .prologue
    .line 284
    iget v0, p0, Lmiui/widget/DynamicListView$7;->Rk:I

    iget v1, p0, Lmiui/widget/DynamicListView$7;->Rl:I

    add-int/2addr v0, v1

    .line 286
    iget v1, p0, Lmiui/widget/DynamicListView$7;->Ri:I

    iget v2, p0, Lmiui/widget/DynamicListView$7;->Rj:I

    add-int/2addr v1, v2

    .line 288
    if-eq v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->f(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    iget-object v1, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v1}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lmiui/widget/DynamicListView;->d(Lmiui/widget/DynamicListView;J)V

    .line 291
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->j(Lmiui/widget/DynamicListView;)V

    .line 294
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 216
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 221
    :cond_0
    iput p2, p0, Lmiui/widget/DynamicListView$7;->Rk:I

    .line 222
    iput p3, p0, Lmiui/widget/DynamicListView$7;->Rl:I

    .line 223
    iget v0, p0, Lmiui/widget/DynamicListView$7;->Ri:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmiui/widget/DynamicListView$7;->Rk:I

    :goto_0
    iput v0, p0, Lmiui/widget/DynamicListView$7;->Ri:I

    .line 226
    iget v0, p0, Lmiui/widget/DynamicListView$7;->Rj:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lmiui/widget/DynamicListView$7;->Rl:I

    :goto_1
    iput v0, p0, Lmiui/widget/DynamicListView$7;->Rj:I

    .line 229
    invoke-virtual {p0}, Lmiui/widget/DynamicListView$7;->eq()V

    .line 230
    invoke-virtual {p0}, Lmiui/widget/DynamicListView$7;->er()V

    .line 231
    iget v0, p0, Lmiui/widget/DynamicListView$7;->Rk:I

    iput v0, p0, Lmiui/widget/DynamicListView$7;->Ri:I

    .line 232
    iget v0, p0, Lmiui/widget/DynamicListView$7;->Rl:I

    iput v0, p0, Lmiui/widget/DynamicListView$7;->Rj:I

    .line 233
    return-void

    .line 223
    :cond_1
    iget v0, p0, Lmiui/widget/DynamicListView$7;->Ri:I

    goto :goto_0

    .line 226
    :cond_2
    iget v0, p0, Lmiui/widget/DynamicListView$7;->Rj:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 240
    :cond_0
    iput p2, p0, Lmiui/widget/DynamicListView$7;->Rm:I

    .line 241
    iget-object v0, p0, Lmiui/widget/DynamicListView$7;->Rd:Lmiui/widget/DynamicListView;

    invoke-static {v0, p2}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;I)I

    .line 242
    invoke-direct {p0}, Lmiui/widget/DynamicListView$7;->ep()V

    .line 243
    return-void
.end method
