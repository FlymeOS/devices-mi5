.class public Lcom/miui/internal/app/ActionBarImpl$TabImpl;
.super Landroid/app/ActionBar$Tab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field final synthetic bC:Lcom/miui/internal/app/ActionBarImpl;

.field private bD:Landroid/app/ActionBar$TabListener;

.field private bE:Landroid/app/ActionBar$TabListener;

.field private bF:Ljava/lang/Object;

.field private bG:Ljava/lang/CharSequence;

.field private bH:Ljava/lang/CharSequence;

.field private bI:I

.field private bJ:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .locals 1

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bC:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    .line 1191
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:I

    return-void
.end method

.method static synthetic a(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bE:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/internal/app/ActionBarImpl$TabImpl;)Landroid/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bD:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method


# virtual methods
.method public getCallback()Landroid/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 1207
    invoke-static {}, Lcom/miui/internal/app/ActionBarImpl;->q()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bH:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bJ:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1248
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bF:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bG:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bC:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1291
    return-void
.end method

.method public setContentDescription(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bC:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->c(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bH:Ljava/lang/CharSequence;

    .line 1302
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:I

    if-ltz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bC:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->b(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1305
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroid/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bC:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bJ:Landroid/view/View;

    .line 1229
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:I

    if-ltz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bC:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->b(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1232
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bC:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->c(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1263
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:I

    if-ltz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bC:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->b(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1266
    :cond_0
    return-object p0
.end method

.method public setInternalTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bE:Landroid/app/ActionBar$TabListener;

    .line 1218
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 1252
    iput p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:I

    .line 1253
    return-void
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bD:Landroid/app/ActionBar$TabListener;

    .line 1213
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bF:Ljava/lang/Object;

    .line 1203
    return-object p0
.end method

.method public setText(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bC:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->c(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bG:Ljava/lang/CharSequence;

    .line 1277
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:I

    if-ltz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bC:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarImpl;->b(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->bI:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1280
    :cond_0
    return-object p0
.end method
