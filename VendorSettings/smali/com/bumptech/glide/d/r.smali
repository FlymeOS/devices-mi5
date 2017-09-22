.class public Lcom/bumptech/glide/d/r;
.super Landroid/support/v4/app/Fragment;
.source "SupportRequestManagerFragment.java"


# instance fields
.field private final aUT:Lcom/bumptech/glide/d/a;

.field private final aUU:Lcom/bumptech/glide/d/p;

.field private aUV:Lcom/bumptech/glide/j;

.field private final aUW:Ljava/util/HashSet;

.field private aVg:Lcom/bumptech/glide/d/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/bumptech/glide/d/a;

    invoke-direct {v0}, Lcom/bumptech/glide/d/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/r;-><init>(Lcom/bumptech/glide/d/a;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/d/a;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 25
    new-instance v0, Lcom/bumptech/glide/d/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/d/t;-><init>(Lcom/bumptech/glide/d/r;Lcom/bumptech/glide/d/s;)V

    iput-object v0, p0, Lcom/bumptech/glide/d/r;->aUU:Lcom/bumptech/glide/d/p;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/r;->aUW:Ljava/util/HashSet;

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/d/r;->aUT:Lcom/bumptech/glide/d/a;

    .line 39
    return-void
.end method

.method private a(Lcom/bumptech/glide/d/r;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aUW:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method private b(Lcom/bumptech/glide/d/r;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aUW:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method


# virtual methods
.method DY()Lcom/bumptech/glide/d/a;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aUT:Lcom/bumptech/glide/d/a;

    return-object v0
.end method

.method public DZ()Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aUV:Lcom/bumptech/glide/j;

    return-object v0
.end method

.method public Ea()Lcom/bumptech/glide/d/p;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aUU:Lcom/bumptech/glide/d/p;

    return-object v0
.end method

.method public g(Lcom/bumptech/glide/j;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/d/r;->aUV:Lcom/bumptech/glide/j;

    .line 48
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 116
    invoke-static {}, Lcom/bumptech/glide/d/o;->Eb()Lcom/bumptech/glide/d/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/d/r;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/o;->a(Landroid/support/v4/app/FragmentManager;)Lcom/bumptech/glide/d/r;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/r;->aVg:Lcom/bumptech/glide/d/r;

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aVg:Lcom/bumptech/glide/d/r;

    if-eq v0, p0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aVg:Lcom/bumptech/glide/d/r;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/r;->a(Lcom/bumptech/glide/d/r;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 147
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aUT:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->onDestroy()V

    .line 148
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aVg:Lcom/bumptech/glide/d/r;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aVg:Lcom/bumptech/glide/d/r;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/r;->b(Lcom/bumptech/glide/d/r;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/d/r;->aVg:Lcom/bumptech/glide/d/r;

    .line 130
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aUV:Lcom/bumptech/glide/j;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aUV:Lcom/bumptech/glide/j;

    invoke-virtual {v0}, Lcom/bumptech/glide/j;->onLowMemory()V

    .line 158
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aUT:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->onStart()V

    .line 136
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 141
    iget-object v0, p0, Lcom/bumptech/glide/d/r;->aUT:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->onStop()V

    .line 142
    return-void
.end method
