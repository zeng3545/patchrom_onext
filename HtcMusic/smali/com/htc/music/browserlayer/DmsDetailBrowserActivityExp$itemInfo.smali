.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "itemInfo"
.end annotation


# instance fields
.field private mID:Ljava/lang/String;

.field private mPos:I

.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pos"
    .parameter "ID"

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2076
    iput p2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;->mPos:I

    .line 2077
    iput-object p3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;->mID:Ljava/lang/String;

    .line 2078
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getPostion()I
    .locals 1

    .prologue
    .line 2085
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;->mPos:I

    return v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 2089
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;->mID:Ljava/lang/String;

    .line 2090
    return-void
.end method

.method public setPostion(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 2081
    iput p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;->mPos:I

    .line 2082
    return-void
.end method
